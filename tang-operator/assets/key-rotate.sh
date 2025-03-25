#!/bin/bash -e

namespace=""

usage() {
  echo
  echo "Usage:"
  echo
  echo "$1 -n namespace [-c k8s_client] [-v (verbose)]"
  echo
  exit "$2"
}

while getopts "n:c:hv" arg
do
case "${arg}" in
  n) namespace=${OPTARG}
  ;;
  c) oc_client=${OPTARG}
  ;;
  h) usage "$0" 0
  ;;
  v) set -x
  ;;
  *) usage "$0" 1
  ;;
esac
done

test -z "${namespace}" && namespace="default"
test -z "${oc_client}" && oc_client="oc"

sha1_1=$("${oc_client}" -n "${namespace}" get tangservers.nbde.openshift.io  -o json | jq '.items[0].status.activeKeys[0].sha1')
# Keep the existing hidden sha1, if it does not exist, set with the active
hsha1_1=$("${oc_client}" -n "${namespace}" get tangservers.nbde.openshift.io  -o json | jq '.items[0].status.hiddenKeys[0].sha1')
test -z "${hsha1_1}" && hsha1_1="${hsha1_1}"
replicas=$("${oc_client}" -n "${namespace}" get tangservers.nbde.openshift.io  -o json | jq '.items[0].spec.replicas')

ftemp=$(mktemp)
cat<<EOF>"${ftemp}"
apiVersion: nbde.openshift.io/v1alpha1
kind: TangServer
metadata:
  name: tangserver-mini
  namespace: ${namespace}
  finalizers:
  - finalizer.daemons.tangserver.redhat.com
spec:
  replicas: ${replicas}
  hiddenKeys:
  - sha1: ${sha1_1}
  - sha1: ${hsha1_1}
  image: docker.io/sarroutbi/tang
  version: unsupported
EOF

"${oc_client}" apply -f "${ftemp}" -n "${namespace}"
rm "${ftemp}"

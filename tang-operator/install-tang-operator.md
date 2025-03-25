Install tang operator by using next command:
`operator-sdk run bundle --verbose --timeout 10m quay.io/sec-eng-special/nbde-tang-server-bundle:latest`{{execute}}

After execution of previous command, you should see an output similar to next one (take into account that version could be a different one):
```bash
INFO[0023] Creating a File-Based Catalog of the bundle "quay.io/sec-eng-special/nbde-tang-server-bundle:v1.1.0"
INFO[0029] Generated a valid File-Based Catalog
INFO[0049] Created registry pod: quay-io-sec-eng-special-nbde-tang-server-bundle-v1-1-0
INFO[0049] Created CatalogSource: nbde-tang-server-catalog
INFO[0050] Created Subscription: nbde-tang-server-v1-1-0-sub
INFO[0074] Approved InstallPlan install-xrww4 for the Subscription: nbde-tang-server-v1-1-0-sub
INFO[0074] Waiting for ClusterServiceVersion "openshift-operators/nbde-tang-server.v1.1.0" to reach 'Succeeded' phase
INFO[0076]   Found ClusterServiceVersion "openshift-operators/nbde-tang-server.v1.1.0" phase: Pending
INFO[0078]   Found ClusterServiceVersion "openshift-operators/nbde-tang-server.v1.1.0" phase: Installing
INFO[0099]   Found ClusterServiceVersion "openshift-operators/nbde-tang-server.v1.1.0" phase: Succeeded
INFO[0099] OLM has successfully installed "nbde-tang-server.v1.1.0"
```
If you see an output similar to previous one, click on Next button.

Meanwhile, in case installation takes long and doesn't complete as specified before, try cleaning and installing with particular opm version:\
`operator-sdk cleanup nbde-tang-server`{{execute}}\
`operator-sdk run bundle --verbose --timeout 10m quay.io/sec-eng-special/nbde-tang-server-bundle:latest --index-image quay.io/operator-framework/opm:v1.23.0`{{execute}}

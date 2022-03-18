To perform key rotation, execute next command:
`./key-rotate.sh -n nbde -c kubectl`{{execute}}

Note that, after performing previous operator, hidden keys appear, and new active keys are generated:
`kubectl -n nbde describe tangserver | grep 'Status:' -A10`{{execute}}


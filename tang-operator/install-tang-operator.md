Install tang operator by using next command:  
`operator-sdk run bundle --verbose --timeout 10m quay.io/sec-eng-special/tang-operator-bundle:latest`{{execute}}

After execution of previous command, you should see an output similar to next one (take into account that version could be a different one):  
```bash
INFO[0012] Successfully created registry pod: quay-io-sec-eng-special-tang-operator-bundle-latest
INFO[0012] Created CatalogSource: tang-operator-catalog
INFO[0012] OperatorGroup "operator-sdk-og" created
INFO[0012] Created Subscription: tang-operator-v0-0-26-sub
INFO[0017] Approved InstallPlan install-9zh2g for the Subscription: tang-operator-v0-0-26-sub
INFO[0017] Waiting for ClusterServiceVersion "default/tang-operator.v0.0.26" to reach 'Succeeded' phase
INFO[0017]   Waiting for ClusterServiceVersion "default/tang-operator.v0.0.26" to appear
INFO[0034]   Found ClusterServiceVersion "default/tang-operator.v0.0.26" phase: Pending
INFO[0036]   Found ClusterServiceVersion "default/tang-operator.v0.0.26" phase: InstallReady
INFO[0037]   Found ClusterServiceVersion "default/tang-operator.v0.0.26" phase: Installing
INFO[0061]   Found ClusterServiceVersion "default/tang-operator.v0.0.26" phase: Succeeded
INFO[0061] OLM has successfully installed "tang-operator.v0.0.26"
```
If you see an output similar to previous one, click on Next button.

Meanwhile, in case installation takes long and doesn't complete as specified before, try cleaning and installing with particular opm version:\
`operator-sdk cleanup tang-operator`{{execute}}\
`operator-sdk run bundle --verbose --timeout 10m quay.io/sec-eng-special/tang-operator-bundle:latest --index-image quay.io/operator-framework/opm:v1.23.0`{{execute}}

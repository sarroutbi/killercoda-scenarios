Install operator-sdk via next command:  
`kubectl apply -f minimal-keyretrieve/`{{execute}}

Once operator has been configured, deployed services can be observed with next command:  
`kubectl -n nbde get services`{{execute}}

Information of deployed tangserver CRD can be retrieved with next command:  
`kubectl -n nbde describe tangserver`{{execute}}

Deployed pods can be observed with next command:  
`kubectl -n nbde get pods`{{execute}}

Please, wait until pods are up and running, with an output to previous command similar to:
```bash
controlplane $ kubectl -n nbde get pods
NAME                                              READY   STATUS             RESTARTS   AGE
tangdeployment-tangserver-mini-548d485df8-cbkbd   1/1     Running            0          2m45s
```

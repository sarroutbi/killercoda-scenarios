Install operator-sdk via next command:  
`kubectl apply -f minimal-keyretrieve/`{{execute}}

Once operator has been configured, deployed pods can be observed with next command:  
`kubectl -n nbde get pods`{{execute}}

Deployed services can be observed with next command:  
`kubectl -n nbde get services`{{execute}}

Information of deployed tangserver CRD can be retrieved with next command:  
`kubectl -n nbde describe tangserver`{{execute}}

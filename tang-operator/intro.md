# Overview:

Policy-based Decryption (PBD) is a collection of technologies that enable automated unlocking of encrypted volumes of hard drives on physical and virtual machines using a variety of unlocking methods. When the unlocking method uses a special network server, we call it Network-Bound Disk Encryption (NBDE).

NBDE requires a special network server. In RHEL, this server is called `tang`. This server can be deployed automatically in Kubernetes via `tang-operator`.

# Goal:

After completing this scenario, users will learn how to deploy `tang-operator` in Kubernetes.

# Concepts included in this scenario:
- Deploying `tang` server in K8S via tang-operator
- Printing representative information of tang server and keys
- Perform key rotation and check key status exported by tang operator information

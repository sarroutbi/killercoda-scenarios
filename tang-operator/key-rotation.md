To perform key rotation, execute next command:  
`./key-rotate.sh -n nbde -c kubectl`{{execute}}

Note that, after performing previous command, hidden keys should appear, and new active keys should generated.
To access to the status of the keys in the tangserver, execute next command:
`kubectl -n nbde describe tangserver | grep 'Status:' -A10000`{{execute}}

Please, wait until keys have been rotated, an output to previous command is similar to:  
```bash
controlplane $ kubectl -n nbde describe tangserver | grep 'Status:' -A10000
Status:
  Active Keys:
    File Name:  YG2Z_DiFINzpk3XDHQ2rtv7NtxQ.jwk
    Generated:  2022-03-18 12:07:05.884000000 +0000
    sha1:       YG2Z_DiFINzpk3XDHQ2rtv7NtxQ
    sha256:     L8GWzGzee21W27XOjXWc5ctz9hTUsFai41LSfxmlQwg
  Hidden Keys:
    File Name:        .7mENVI41QFSTKQSfQQ5ujfzy4jI.jwk
    Generated:        2022-03-18 12:06:20.876000000 +0000
    Hidden:           2022-03-18 12:06:53.980000000 +0000
    sha1:             7mENVI41QFSTKQSfQQ5ujfzy4jI
```

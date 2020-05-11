# Known bugs and workarounds

1. During `ansible-playbook site-install.yml` spamd fails to start

Cause: certificate for acme has not been generated correctly  
Workaround: when the playbook fails, run the command `ansimail renew-certs` and then re-run the playbook `ansible-playbook site-install.yml`


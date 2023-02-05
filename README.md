# Proxmox Ansible bootstrap

### configuring ansible server

```sh
pipx install ansible-base
pipx inject ansible-base passlib # needed for hashing the user password in run.yml
ansible-galaxy install -r requirements.yml
```

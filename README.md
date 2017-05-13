# Pierre's personnal Infra

I'm handling my servers hosted at OVH with Ansible.

## List of hosts 

* mon.pierrezemb.org hosting my inmemory version of Warp10
* pierrezemb.fr hosting several websites with caddy

## Ansible commands

##### ping all hosts

```bash
ansible all -m ping -i inventory/all -u arch --sudo
```

#### run common playbook

```bash 
ansible-playbook -i inventory/all common.yml -u arch --sudo
```
# docker-ansible

Project to create a training environment for ansible using on a docker-compose file.

It provides a lightweight environment with 1 control node and a number of managed nodes (2 initially).

Based on existing work from:
- https://github.com/bouriau/docker-ansible
- https://github.com/mdnsfr/docker-sshd



## Start

Starting containers : ```docker-compose up -d``` 

Enter Ansible container : ```docker exec -ti ansible bash``` 

Enter Client container : ```docker exec -ti node1 bash``` 

---

## Test
Simply run an ADHOC command in Ansible container to check if it's working or not.

```console
ansible host1 -i inventory/inventory.yaml -m ping
``` 


I should return:

```
host1 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
```

# docker-ansible

## Start

Starting containers : ```docker-compose up -d``` <br>
Enter Ansible container : ```docker exec -ti ansible bash``` <br>
Enter Client container : ```docker exec -ti remote-host-one bash``` <br>

---

## Test
Simply run an ADHOC command in Ansible container to check if it's working or not. <br>
```ansible host1 -i inventory/inventory.txt -m ping``` <br>

result should be like : <br>
```
host1 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
```

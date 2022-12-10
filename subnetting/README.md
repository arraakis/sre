# Subnetting

### Find your ip (mac)

```sh
    ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'
```

`192.168.1.30` 
- Each section of the IP address is known as octets (8 bits)
- First three portion (`192.168.1..`) are the `network portion`
- The last portion (`.30`) is the `host portion`.
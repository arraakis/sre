# Subnetting
- A subnet is a logical subdivsion of an IP network. The process of dividing a network into two or more network is called subnetting.
- The main purpose of subnetting is to help relieve network congestion and improve network performance.
- Security is another benefit of subnetting.
### Find your ip (mac)

```sh
    ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'
```

`192.168.1.30` 
- Each section of the IP address is 4 octets (8 bits)
- First three portion (`192.168.1..`) are the `network portion`
- The last portion (`.30`) is the `host portion`.
- Each portion can have values ranging from `0-255`.
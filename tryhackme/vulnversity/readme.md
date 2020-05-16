## Vulnversity

## Task 2 - Reconnaissance

### 	Scan the box, how many ports are open?
`6`

### What version of the squid proxy is running on the machine?
`3.5.12`

### How many ports will nmap scan if the flag -p-400 was used?
`400`

### Using the nmap flag -n what will it not resolve?
`dns`

### What is the most likely operating system this machine is running?
`Ubuntu`

### What port is the web server running on?
`3333`

---

## Task 3 - Locating directories using GoBuster

### What is the directory that has an upload form page?
`\internal`

---

## Task 4 - Compromise the webserver

### Try upload a few file types to the server, what common extension seems to be blocked?
`.php`

### What extension is allowed?
`.phtml`

### What user was running the web server?
`bill`

### What is the user flag?
`8bd7992fbe8a6ad22a63361004cfcedb`

---

## Task 5 - Privilege Escalation

### On the system, search for all SUID files. What file stands out?
`/bin/systemctl`

### Become root and get the last flag (/root/root.txt)
`a58ff8579f0a9270368d33a9966c7fd5`

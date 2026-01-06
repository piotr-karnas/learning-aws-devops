## AWS sesja #3 - network security
### Security groups
<img src="sg.png" width="500" alt="security_groups">
 - SSH (22/MyIP) + HTTP (80/Anywhere)
 - Apache2 web server w sesja2-vpc
<img src="apache_ssh_running.png" width="500" alt="apache_ssh_running">
### NACL
 - Inbound 80/22 TCP
<img src="nacl_rules.png" width="500" alt="nacl_rules">
 - Stateless, so outbound rules created separately
 - Lockdown demo, blocking rule with lower number
<img src="nacl_block_ssh.png" width="500" alt="nacl_block_ssh">
<img src="ssh_timeout.png" width="500" alt="timeout">

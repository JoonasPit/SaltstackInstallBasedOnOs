firewalld:
  pkg.installed

"sudo systemctl enable firewalld":
  cmd.run:
    - unless: "sudo firewall-cmd --zone=public --permanent --list-ports | grep '8181'"

"firewall-cmd --permanent --zone=public --add-port=80/tcp":
  cmd.run: 
    - unless: "sudo firewall-cmd --zone=public --permanent --list-ports | grep '80'"

"firewall-cmd --permanent --zone=public --add-port=8181/tcp":
  cmd.run:
    - unless: "sudo firewall-cmd --zone=public --permanent --list-ports | grep '8181'"

"firewall-cmd --reload":
  cmd.run:
    - unless: "sudo firewall-cmd --zone=public --permanent --list-ports | grep '8181'"

"sudo reboot":
  cmd.run:
    - unless: "sudo firewall-cmd --zone=public --permanent --list-ports | grep '8181'"


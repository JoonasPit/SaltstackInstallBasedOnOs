"sudo ufw enable":
  cmd.run:
    - unless: "sudo ufw status | grep '8181'"

"sudo ufw allow 8181/tcp":
  cmd.run:
    - unless: "sudo ufw status | grep '8181'"

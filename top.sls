
base:
  '*':
    - hello

  'lsb_distrib_id:Fedora':
    - match: grain
    - centosfire

  'lsb_distrib_description:Ubuntu 18.04.1 LTS':  
    - match: grain
    - python3
    - firewall
    - ssh
    - figlet
    - LAMP
    - dbcreate

  'lsb_distrib_id:CentOS Linux':
    - match: grain
    - centosfire 



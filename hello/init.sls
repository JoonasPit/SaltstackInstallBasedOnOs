{% if "Windows" == grains["kernel"] %}
{% set usedfile = "C:\\Users\\Teppo\\Desktop\\hellowindows.txt" %}
{% elif "CentOS Linux" == grains["lsb_distrib_id"] %}
{% set usedfile = "/tmp/hellocentos.txt" %}
{% elif "Fedora" == grains["lsb_distrib_id"] %}
{% set usedfile = "/tmp/hellofedora.txt" %}
{% elif "Kali" == grains["lsb_distrib_id"] %}
{% set usedfile = "/tmp/hellofedora.txt" %}
{% elif "Ubuntu 16.04.5 LTS" == grains["lsb_distrib_description"] %}
{% set usedfile = "/etc/skel/helloubuntu.txt" %}
{% elif "Ubuntu 18.04.1 LTS" == grains["lsb_distrib_description"] %}
{% set usedfile = "/tmp/helloxubutnu.txt" %}
{% elif "LinuxMint" == grains["lsb_distrib_id"] %}
{% set usedfile = "/tmp/hellomint.txt" %}
{% elif "Debian" == grains["lsb_distrib_id"] %}
{% set usedfile = "/tmp/hellodebian.txt" %}

{% endif %}

{{ usedfile }}:
  file.managed:
    - source: salt://hello/helloapolyon.txt

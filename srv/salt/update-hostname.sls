update-hostname:
  file.managed:
    - name: '/boot/occidentalis.txt'
    - source: 'salt://boot/occidentalis.txt'
    - template: 'jinja'
    - defaults:
        minion_id: {{ grains['id'] }}

  cmd.run:
    - unless: 'hash occi 2> /dev/null'
    - name: 'curl -SLs https://apt.adafruit.com/install | sudo bash && occi'

set-static-ip:
  file.managed:
    - name: '/etc/network/interfaces.d/eth0'
    - source: 'salt://etc/network/interfaces.d/eth0'
    - template: 'jinja'
    - defaults:
        ip_address: {{ pillar['node-ips'][grains['id']]['ip'] }}

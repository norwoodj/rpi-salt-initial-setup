add-salt-master-host:
  host.present:
    - ip: '{{ pillar['node-ips'][pillar['salt_master']['hostname']] }}'
    - names:
      - salt
      - '{{ pillar['salt_master']['hostname'] }}'

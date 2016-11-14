add-salt-master-host:
  host.present:
    - ip: '{{ pillar['salt_master']['ip'] }}'
    - names:
      - salt
      - '{{ pillar['salt_master']['hostname'] }}'

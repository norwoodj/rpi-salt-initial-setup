add-kubernetes-master-host:
  host.present:
    - ip: '{{ pillar['node-ips'][pillar['kubernetes_master']['hostname']] }}'
    - names:
      - kubernetes

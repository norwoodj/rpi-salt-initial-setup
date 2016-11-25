base:
  '*':
    - set-static-ip
    - update-hostname

  '*sma*':
    - install-salt-master
    - salt.master
    - salt.minion

  '*smi*':
    - add-salt-master-host
    - install-salt-minion
    - salt.minion

  '*kbw*':
    - add-kubernetes-master-host

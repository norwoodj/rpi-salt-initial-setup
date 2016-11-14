base:
  '*sma*':
    - install-salt-master
    - salt.master
    - salt.minion

  '*smi*':
    - add-salt-master-host
    - install-salt-minion
    - salt.minion

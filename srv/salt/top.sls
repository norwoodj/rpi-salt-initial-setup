base:
  '*sma*':
    - install-salt-master
    - salt.master
    - salt.minion

  '*smi*':
    - salt.minion

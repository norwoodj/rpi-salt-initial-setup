base:
  '*':
    - set-static-ip
    - update-hostname
    - add-hosts

  '*sma*':
    - install-salt-master
    - salt.master
    - salt.minion

  '*smi*':
    - install-salt-minion
    - salt.minion

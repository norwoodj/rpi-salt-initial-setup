install-salt-minion:
  cmd.run:
    - unless: 'hash salt-minion 2> /dev/null'
    - name: |
        curl -L https://bootstrap.saltstack.com > bootstrap-salt.sh
        chmod +x bootstrap-salt.sh
        ./bootstrap-salt.sh
        rm bootstrap-salt.sh

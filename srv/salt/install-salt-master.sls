install-salt-master:
  cmd.run:
    - unless: 'hash salt-master 2> /dev/null'
    - name: |
        curl -L https://bootstrap.saltstack.com > bootstrap-salt.sh
        chmod +x bootstrap-salt.sh
        ./bootstrap-salt.sh -M -P git v2019.2.3
        rm bootstrap-salt.sh

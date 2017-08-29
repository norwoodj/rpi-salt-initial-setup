salt:
  install_packages: False

  master:
    fileserver_backend:
      - git
      - roots
    gitfs_remotes:
      - git://github.com/norwoodj/rpi-salt.git
      - git://github.com/saltstack-formulas/users-formula.git
      - git://github.com/saltstack-formulas/openssh-formula.git
      - git://github.com/saltstack-formulas/nfs-formula.git
      - git://github.com/saltstack-formulas/logrotate-formula.git
    file_roots:
      base:
        - /srv/salt
    pillar_roots:
      base:
        - /srv/pillar

  minion:
    master: localhost

salt_master:
  hostname: localhost

update-hostname:
  file.managed:
    - name: /usr/local/bin/occi
    - source: https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/occi
    - source_hash: ae91f123a6bd4dd47b5cad654b8e1c8e8dc775872ccdd82cd73f660b8a77f01b
    - mode: 744

  cmd.run:
    - name: occi

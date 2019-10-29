{% for hostname, config in pillar['node-ips'].items() %}
add-host-{{ hostname }}:
  host.present:
    - ip:
      - 127.0.1.1
      - {{ config['ip'] }}
    - names:
      - {{ hostname }}
  {% for a in config.get('additional_names', []) %}
      - {{ a }}
  {% endfor %}
{% endfor %}

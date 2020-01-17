{% for hostname, config in pillar['node-ips'].items() %}
add-host-{{ hostname }}:
  host.present:
    - ip:
      - {{ config['ip'] }}
    - names:
      - {{ hostname }}
  {% for a in config.get('additional_names', []) %}
      - {{ a }}
  {% endfor %}
{% endfor %}

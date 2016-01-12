# Open Uchiwa port
uchiwa_iptables:
  iptables.append:
    - table: filter
    - chain: INPUT
    - proto: tcp
    - dport: 3000
    - jump: ACCEPT
    - match: comment
    - comment: Uchiwa (Sensu Dashboard)
    - save: True

redis_iptables:
  iptables.append:
    - table: filter
    - chain: INPUT
    - proto: tcp
    - dport: 6379
    - jump: ACCEPT
    - match: comment
    - comment: Redis (Sensu)
    - save: True

api_iptables:
  iptables.append:
    - table: filter
    - chain: INPUT
    - proto: tcp
    - dport: 4567
    - jump: ACCEPT
    - match: comment
    - comment: Sensu API
    - save: True

rabbitmq_iptables:
  iptables.append:
    - table: filter
    - chain: INPUT
    - proto: tcp
    - dport: 5672
    - jump: ACCEPT
    - match: comment
    - comment: RabbitMQ
    - save: True

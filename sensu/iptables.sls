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


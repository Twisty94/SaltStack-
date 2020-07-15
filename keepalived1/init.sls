keepalived:

  pkg:

    - installed

  service.running:

    - watch:

      - pkg: keepalived

      - file: /etc/keepalived/keepalived.conf

  

/etc/keepalived/keepalived.conf:

  file.managed:

    - source: salt://keepalived1/keepalived/keepalived/keepalived.conf.jinja

    - template: jinja

    - user: root

    - group: root

    - mode: 640



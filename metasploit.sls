msf_user:
    user:
        - name: krustyhack
        - present

https://github.com/rapid7/metasploit-framework.git:
    git.latest:
        - rev: master
        - target: /home/krustyhack/metasploit-framework

cd /home/krustyhack/metasploit-framework && bundle install:
    cmd.run
cd /home/krustyhack/metasploit-framework/ && for MSF in $(ls msf*); do rm /usr/local/bin/$MSF && ln -s /home/krustyhack/metasploit-framework/$MSF /usr/local/bin/$MSF;done:
    cmd.run

/home/krustyhack/metasploit-framework/database.yml:
    file.managed:
        - user: krustyhack
        - group: krustyhack
        - mode: 644
        - makedirs: True
        - source: salt://metasploit/files/database.tpl
        - template: jinja
/etc/profile:
    file.append:
        - text: export MSF_DATABASE_CONFIG=/home/krustyhack/metasploit-framework/database.yml
{% for package in ["build-essential", "libreadline-dev", "libssl-dev", "libpq5", "libpq-dev", "libreadline5", "libsqlite3-dev", "libpcap-dev", "openjdk-7-jre", "subversion", "git-core", "autoconf", "postgresql", "pgadmin3", "curl", "zlib1g-dev", "libxml2-dev", "libxslt1-dev", "vncviewer", "libyaml-dev", "ruby1.9.3", "ruby-dev", "bundler", "nmap"] %}
{{ package }}:
    pkg:
        - installed
{% endfor %}
{% for gem_package in ["wirble", "sqlite3", "bundler"] %}
gem_{{ gem_package }}:
    gem:
        - name: {{ gem_package }}
        - installed
{% endfor %}
include:
    - .postgresql
    - .metasploit
    - .armitage
postgres_user:
    postgres_user:
        - name: msf
        - user: postgres
        - password: msf
        - present
postgres_database:
    postgres_database:
        - name: msf
        - user: postgres
        - owner: msf
        - present
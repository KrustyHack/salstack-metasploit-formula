postgres_user:
    postgres_user:
        - name: msf
        - user: postgres
        - db_password: msf
        - present
postgres_database:
    postgres_database:
        - name: msf
        - user: postgres
        - owner: msf
        - present
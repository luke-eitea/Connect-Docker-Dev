# Connect-Docker-Dev

Files for local development.
Do not use this in production.

```bash
docker-compose build; # build
docker-compose up; # start
docker-compose down; docker-compose up; # restart
```

You may need to delete `Connect/src/connection_config.php`.

- **localhost:8081** - PHPMyAdmin (username: `root`, password: `Uponokuhe585`)
- **localhost:80** - PHP (directory can be changed in docker-compose (default `D:/xampp/htdocs/Connect`))
- **localhost:3306** - Database (servername: `c-db`, username: `connect`, password: `Uforonudi499`, database: `connect`)
- **localhost:9001** - Minio (access key: `AKIAIOSFODNN7EXAMPLE`, secret key: `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY`)

<small>no warranty</small>

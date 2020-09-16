
#!/bin/bash

echo "Starting PostgreSQL 11..."
docker run -it --rm \
  -e POSTGRES_PASSWORD=mysecretpassword \
  -v postgres11-data:/var/lib/postgresql/data \
  -p 5432:5432 \
  postgres:11
  
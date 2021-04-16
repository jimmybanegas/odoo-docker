
#!/bin/bash

echo "Starting PostgreSQL 11..."
winpty docker run -it --rm \
  -e POSTGRES_PASSWORD=mysecretpassword \
  -v postgres11-data:/$(pwd)/var/lib/postgresql/data \
  -p 5432:5432 \
  postgres:11
  
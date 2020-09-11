# Junari Odoo Docker image

Junari Open Source Docker image for Odoo Development and Production

* Ubuntu 18.04 LTS
* Odoo Community Edition, installed from source in `/opt/odoo`
* Supports custom addons in `/opt/odoo/custom_addons`
* Includes an `odoo-config` script for modifying the odoo config file in derrived images
* Includes Git and SSH clients for development
* Includes Visual Studio Code folder mount points

## Running the `junari/odoo` image

### Prerequisites

* [Docker Desktop](https://www.docker.com/products/docker-desktop)
* Access to a PostgreSQL 9+ Database Server

### Configuring

This image requires the following environment variables.

* `DB_HOST` - Postgres Database server address. Set to `host.docker.internal` to use your local machine.
* `DB_PORT` - Postgres Database server port. Normally 5432
* `DB_USER` - Odoo database user. This must NOT be your PostgreSQL super user (`postgres`)
* `DB_PASSWORD` - Odoo database user password.

We recommend creating an `odoo.env` file to store your database configuration. Check out
[odoo.env-example](https://github.com/junariltd/junari-odoo-docker/blob/master/odoo.env-example)
for an example.

### Creating a new Odoo database

The following example walks you through creating a new Odoo database using this image:

1. In a new folder, create an `odoo.env` file, as above

2. Create a blank PostgreSQL database owned by your Odoo database user, e.g.

```sql
CREATE DATABASE odoo13 OWNER odoo ENCODING UTF8;
```

3. Run this image with the following command in the Terminal (or in
   [Git Bash](https://gitforwindows.org/) on Windows) to initialise your new
   Odoo database

```bash
docker run --rm -it \
    -v junari-odoo-data:/opt/odoo/data \
    -p 8069:8069 \
    --env-file=odoo.env \
    junari/odoo \
    odoo -d odoo13 -i base --without-demo=all --load-language=en_GB --stop-after-init
```

(where `odoo13` is the new database name)

4. Now that your database has been initialised, you can restart it with a
   simpler command. You might find it useful to save the below into a
   `start-odoo.sh` script, which you can run instead of typing it out!

```bash
docker run --rm -it \
    -v junari-odoo-data:/opt/odoo/data \
    -p 8069:8069 \
    --env-file=odoo.env \
    junari/odoo odoo -d odoo13
```

Your Odoo system should now be accessible at http://localhost:8069 . You can log
in using the default user: admin, password: admin

## Development

### Running

The below script should be run in Git Bash on windows, or in the Terminal application on Mac and Linux

```bash
# Run the junari/odoo docker image with default settings
./run.sh
```

You can also pass any `odoo-bin` args via `run.sh`, e.g.:

```bash
# Initialise a new database (with demo data disabled)
./run.sh odoo -d db_name -i base --without-demo=all --load-language=en_GB

# Run with a specific database
./run.sh odoo -d db_name

# Access the odoo shell for a specific database
./run.sh odoo-shell -d db_name

# Access bash inside the container
./run.sh bash
```

### Re-building the image

```bash
# Re-build the images (with the latest ubuntu)
./build.sh
```

### Reference Tutorial

https://medium.com/@dupski/creating-and-installing-your-first-odoo-module-using-docker-and-visual-studio-code-41ebdfd362e4

### Credits:

Taken from: https://github.com/jimmybanegas93/junari-odoo-docker
#!/bin/bash

echo "Building the jimmybanegas93/odoo-os image..."
docker build -t jimmybanegas93/odoo-os -f junari-odoo-os.dockerfile --pull .

echo "Building the jimmybanegas93/odoo image..."
docker build -t jimmybanegas93/odoo14 -f junari-odoo.dockerfile .

#!/bin/bash

echo "Building the junari/odoo-os image..."
docker build -t jimmybanegas93/odoo-os -f junari-odoo-os.dockerfile --pull .

echo "Building the junari/odoo image..."
docker build -t jimmybanegas93/odoo11 -f junari-odoo.dockerfile .

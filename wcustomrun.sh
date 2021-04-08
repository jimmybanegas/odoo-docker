winpty docker run --rm -it --name=junari-odoo13-dev \
    -v junari-odoo13-data:/$(pwd)/opt/odoo/data \
    -v junari-odoo13-vscode:/$(pwd)/opt/odoo/.vscode \
    -v junari-odoo13-custom-addons:/$(pwd)/opt/odoo/custom_addons \
    -v junari-odoo13-home:/$(pwd)/home/odoo \
    -p 8069:8069 --env-file=odoo.env \
    jimmybanegas93/odoo13 bash
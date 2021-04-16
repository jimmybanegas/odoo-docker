winpty docker run --rm -it --name=junari-odoo13-dev \
    -v junari-odoo14-data:/$(pwd)/opt/odoo/data \
    -v junari-odoo14-vscode:/$(pwd)/opt/odoo/.vscode \
    -v junari-odoo14-custom-addons:/$(pwd)/opt/odoo/custom_addons \
    -v junari-odoo14-home:/$(pwd)/home/odoo \
    -p 8069:8069 --env-file=odoo.env \
    jimmybanegas93/odoo14 bash
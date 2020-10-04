docker run --rm -it --name=junari-odoo13-dev \
    -v junari-odoo13-data:/opt/odoo/data \
    -v junari-odoo13-vscode:/opt/odoo/.vscode \
    -v junari-odoo13-custom-addons:/opt/odoo/custom_addons \
    -v junari-odoo13-home:/home/odoo \
    -p 8069:8069 --env-file=odoo.env \
    jimmybanegas93/odoo13 bash
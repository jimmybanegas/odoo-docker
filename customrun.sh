winpty docker run --rm -it --name=junari-odoo14-dev \
    -v junari-odoo14-data:/opt/odoo/data \
    -v junari-odoo14-vscode:/opt/odoo/.vscode \
    -v junari-odoo14-custom-addons:/opt/odoo/custom_addons \
    -v junari-odoo14-home:/home/odoo \
    -p 8069:8069 --env-file=odoo.env \
    jimmybanegas93/odoo14 bash
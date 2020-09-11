docker run --rm -it \
    -v junari-odoo-data:/opt/odoo/data \
    -p 8069:8069 \
    --env-file=odoo.env \
    junari/odoo \
    odoo -d odoo13 -i base --without-demo=all --load-language=es_ES --stop-after-init
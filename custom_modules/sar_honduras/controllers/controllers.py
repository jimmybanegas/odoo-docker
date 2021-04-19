# -*- coding: utf-8 -*-
# from odoo import http


# class SarHonduras(http.Controller):
#     @http.route('/sar_honduras/sar_honduras/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/sar_honduras/sar_honduras/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('sar_honduras.listing', {
#             'root': '/sar_honduras/sar_honduras',
#             'objects': http.request.env['sar_honduras.sar_honduras'].search([]),
#         })

#     @http.route('/sar_honduras/sar_honduras/objects/<model("sar_honduras.sar_honduras"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('sar_honduras.object', {
#             'object': obj
#         })

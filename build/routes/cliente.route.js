'use strict';
var express = require('express');
var clienteController = require('../controllers/cliente.controller');
var router = express.Router();
//middleWare, se ejecuta antes de la accion del controlador
//var multipart = require("connect-multiparty");
//var multipartMiddleware = multipart({uploadDir: './uploads'});
router.post('/register', clienteController.register);
//router.get('/clientes', clienteController.getClientes);
//router.post('/cliente/:id?', clienteController.getCliente);
//router.put('/cliente/:id', clienteController.updateCliente);
//router.delete('/cliente/:id', ProjectController.deleteCliente); 
//router.post("/login", clienteController.login);
module.exports = router;

const express = require('express');
const listarPaises = require('./controladores/paises');
const listarArtistas = require('./controladores/artistas');
const listarComidas = require('./controladores/comidas');
const rotas = express();

rotas.get('/', (req, res) => {
    res.send('tudo ok separando arquivos');
})

rotas.get('/paises', listarPaises)

rotas.get('/artistas', listarArtistas)
rotas.get('/comidas', listarComidas)

module.exports = rotas;
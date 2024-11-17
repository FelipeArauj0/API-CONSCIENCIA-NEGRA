require('dotenv').config();

const express = require('express');
const rotas = require('./rotas');
const app = express();
const cors = require('cors');
const corsOptions = require('./corsOptions');

app.use(express.json());
app.use(cors());
app.use(rotas);

console.log('CORS_ORIGIN:', process.env.CORS_ORIGIN);
app.listen(process.env.PORT || 8080, ()=>{
    console.log(`API rodando na porta ${process.env.PORT || 8080}`);
});
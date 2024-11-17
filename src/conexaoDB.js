require('dotenv').config();
const knex = require('knex')({
    client: 'pg',
    connection: {
        host: process.env.DB_HOST,
        port: 5432, // Porta padrão para PostgreSQL
        user: process.env.DB_USER,
        password: process.env.DB_PASS,
        database: process.env.DB_NAME
    }
});

knex.raw('SELECT 1')
    .then(() => {
        console.log('Conexão com o banco de dados estabelecida com sucesso!');
    })
    .catch((err) => {
        console.error('Erro ao conectar ao banco de dados:', err);
    });


module.exports = knex;

require('dotenv').config()
const knex = require("../conexaoDB");

const listarPaises = async (req,res)=>{
    try {
        const paises = await knex('paises')
            .select('*')
            .orderBy('id')

        return res.status(200).json(paises);
    } catch (error) {
        console.error('Erro ao listar países:', error);
        return res.status(500).json({mensagem: 'Erro interno do servidor'})
    }
}

module.exports = listarPaises;
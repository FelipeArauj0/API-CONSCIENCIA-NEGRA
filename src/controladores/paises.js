require('dotenv').config()
const knex = require("../conexaoDB");

const listarPaises = async (req,res)=>{
    try {
        const paises = await knex('paises')
            .select('*')
            .orderBy('id')

        return res.status(200).json(paises);
    } catch (error) {
        console.log(error)
        return res.status(500).json({menssagem: 'Erro interno do servidor'})
    }
}

module.exports = listarPaises;
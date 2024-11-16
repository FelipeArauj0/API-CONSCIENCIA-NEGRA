require('dotenv').config()
const knex = require("../conexaoDB");

const listarComidas = async (req,res)=>{
    try {
        const comidas = await knex('comidas')
            .select('*')
            .orderBy('id')

        return res.status(200).json(comidas);
    } catch (error) {
        console.log(error)
        return res.status(500).json({menssagem: 'Erro interno do servidor'})
    }
}

module.exports = listarComidas;
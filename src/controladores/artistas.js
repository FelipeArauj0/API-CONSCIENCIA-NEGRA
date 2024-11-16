require('dotenv').config()
const knex = require("../conexaoDB");

const listarArtistas = async (req,res)=>{
    try {
        const artistas = await knex('artistas')
            .select('*')
            .orderBy('id')

        return res.status(200).json(artistas);
    } catch (error) {
        console.log(error)
        return res.status(500).json({menssagem: 'Erro interno do servidor'})
    }
}

module.exports = listarArtistas;
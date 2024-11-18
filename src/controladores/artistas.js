require('dotenv').config()
const knex = require("../conexaoDB");

const listarArtistas = async (req,res)=>{
    const {paises_id} = req.body

    try {
        const artistas = await knex('artistas')
            .select('*')
            .where('paises_id', '=', paises_id)
            

        return res.status(200).json(artistas);
    } catch (error) {
        console.log(error)
        return res.status(500).json({menssagem: 'Erro interno do servidor'})
    }
}

module.exports = listarArtistas;
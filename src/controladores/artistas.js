require('dotenv').config()
const knex = require("../conexaoDB");

const listarArtistas = async (req,res)=>{
    const {paises_id} = req.body

    try {
        const artistas = await knex('artistas')
            .select('*')
            .where('paises_id', '=', paises_id)

        if (!artistas || artistas.length === 0){
            return res.status(404).json({mensagem: "artista não encontrado para o pais selecionado"})
        } 
            

        return res.status(200).json(artistas);
    } catch (error) {
        console.log(error)
        return res.status(500).json({menssagem: 'Erro interno do servidor'})
    }
}

module.exports = listarArtistas;
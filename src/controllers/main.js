const db = require('../../database/models')


const mainController = {
    showGroups: function (req, res) {
        //Call a la BBDD para traer los todos los equipos
        // Luego distribuirlos en sus grupos y mostrarlos
        db.Teams.findAll()
            .then(function(teams) {
                res.send(teams)
            })
    }
}
module.exports = mainController
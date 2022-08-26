const db = require('../../database/models')


const mainController = {
    showTeams: function (req, res) {
        //Call a la BBDD para traer los todos los equipos
        // Luego distribuirlos en sus grupos y mostrarlos
        db.Teams.findAll()
            .then( function(teams) {
                return res.json ({
                    count: teams.length,
                    results: Array.from(teams)
                })
                //res.send(teams)
            })
    },
    showGroups: function (req, res) {
        //Call a la BBDD para traer los todos los equipos
        // Luego distribuirlos en sus grupos y mostrarlos
        db.Groups.findAll()
            .then(groups => {
                return res.json ({
                    count: groups.length,
                    results: Array.from(groups)
                })
                //res.send({results: groups})
            })
    },
    showTeamsInGroup: function (req, res) {
        db.Teams.findAll ({
            where: {
                groupId: req.params.groupId
            }
            //order:['points', 'DESC'] // returns teams ordered by their points
        })
        .then(teams => {
            return res.json ({
                count: teams.length,
                results: Array.from(teams)
            })
        })
    }
}
module.exports = mainController
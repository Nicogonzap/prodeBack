const db = require('../../database/models')

module.exports = {
    findAll: function(database) {
        database.findAll(
                //{where: filters} // Might require an if to not pass this value if filters is empty
        )
        .then(function(result) {
            const output = JSON.stringify({
                count: result.length,
                results: Array.from(result)
            })
            //console.log(JSON.parse(output).count)
            return JSON.parse(output)
        })
        .catch(error => console.log(error))
    },
    findOne: function(database, filters) {
        // Insert findone function for sequelize
    }
}
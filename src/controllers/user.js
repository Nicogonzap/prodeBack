const db = require('../../database/models')


const userController = {
    userExists: async function (user) {
        const userValid = await db.Users.findOne({
            attributes: ['email'],
            where: {email: user.email}
        })
        return userValid
    },
    register: async function (req, res) {
        const userToCreate = {
            userTypeId: 1,
            userName: req.body.userName,
            email: req.body.email,
            pass: req.body.pass,
            active: 1
        }
        const userExists = await this.userExists(usertoCreate)
        if (userExists) {
            //Include error for user already existing
            res.send('el usuario ya existe')
        } else {
            const userCreated = await db.Users.create(userToCreate)
            // Overwrite password in response user to avoid security issues
            userCreated.pass = 'Nothing to see here friend';
            return userCreated;
        }
    },
    login: async function (req, res) {
        const userToLog = {
            userName: req.body.userName,
            pass: req.body.pass
        }
        const userExists = await this.userExists(userToLog)
        if (userExists) {

        }

    }
}

module.exports = userController
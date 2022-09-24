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
        
        const existantUser = await userController.userExists(userToCreate) //Check why this.userExists was not created
        if (existantUser) {
            //Include error for user already existing
            return ({ error: "El usuario ya fue creado" }) //Returns error message to display in front
        } else {
            const userCreated = await db.Users.create(userToCreate)
            // Overwrite password in response user to avoid security issues
            userCreated.pass = 'Nothing to see here friend';
            return {...userCreated, error:null};
        }
    },
    login: async function (req, res) {
        const userToLog = {
            userName: req.body.userName,
            pass: req.body.pass
        }
        const userExists = await this.userExists(userToLog)
        if (userExists) {
            //login the user
            req.session.userLoged = usuario
            if (req.body.recordarme != undefined) {
                res.cookie('recordarme',usuario.email,{maxAge:1000*60*5})//(1000*60 = 1 min) --> Mover a infinito
            }
        }

    }
}

module.exports = userController
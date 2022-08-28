let express = require ('express');
let userController = require('../controllers/user.js');

let router = express.Router();

router.get('/register', userController.register)

module.exports = router;
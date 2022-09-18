let express = require ('express');
let userController = require('../controllers/user.js');

let router = express.Router();

router.post('/register', userController.register)

module.exports = router;
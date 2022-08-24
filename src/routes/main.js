let express = require ('express');
let mainController = require('../controllers/main.js');

let router = express.Router();

router.get('/', mainController.showGroups)

module.exports = router;
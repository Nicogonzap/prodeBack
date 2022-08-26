let express = require ('express');
let mainController = require('../controllers/main.js');

let router = express.Router();

router.get('/teams', mainController.showTeams)
router.get('/groups', mainController.showGroups)
router.get('/teams/:groupId', mainController.showTeamsInGroup)

module.exports = router;
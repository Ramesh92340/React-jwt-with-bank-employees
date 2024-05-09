const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController.js');


router.post('/register', userController.registration);
router.post('/login', userController.logIn);
router.get('/profile', userController.profile);


module.exports = router;
var router = require('express').Router();
var login = require('moduls/logistic/login');

router.get("/", function (req, res) {
    console.log(login)
    
    if (!login(req, res)) {
        res.render("logistic/roles.html")
    }
});
router.post("/", function (req, res) {
    res.send("2")
});


module.exports = router
var router = require('express').Router();

router.get("/", function (req, res) {
    res.send("2")
});
router.post("/", function (req, res) {
    res.send("2")
});


module.exports = router
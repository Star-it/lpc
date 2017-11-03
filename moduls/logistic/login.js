var router = require('express').Router();

function login(req, res) {
    if (true) {
        if (req.method == "GET") {
            res.render("logistic/noaccess.html");
        } 
        else {
            res.send("{\"error\":\"No access\"}");
        }
        return false;
    }
    return true;
}

module.exports = login
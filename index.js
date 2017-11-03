var express = require('express');
var app = express();
var http = require('http');
var path = require('path');
var nunjucks = require('nunjucks');
var PATH_TO_TEMPLATES = __dirname + '/templates';
var env = nunjucks.configure(PATH_TO_TEMPLATES, {
    autoescape: true,
    express: app,
    watch: true
});

var config = require('config');
var temp = require('moduls/logistic/temp');
var roles = require('moduls/logistic/roles');

env.addFilter('config', function (s,b) {
    return config.get(s);
})

app.use(express.static(path.join(__dirname, 'public')));
app.use("/",roles)

http.createServer(app).listen(3000, function(){
    console.log('Express server listening on port ' + 3000);
});


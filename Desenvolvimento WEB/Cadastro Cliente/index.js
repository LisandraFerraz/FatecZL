const express = require('express');
const session = require('express-session');

const expressSession = require('express-session');

var consign = require('consign');

const app = express();

app.use(session({secret:'11111111111111'}));


bodyParser = reqire('body-parser');
app.use(bodyParser.urlcoded({extended: true}));

app.engine('html', require('ejs').renderFile);
app.set('view engine', 'ejs');

var path = require('path');
app.set('views', path.join(__dirname, '/view/usuario'));

consign().include('controller/routes').into(app);

app.listen(8881, function(){
    console.info("Servidor Funcionando");
});
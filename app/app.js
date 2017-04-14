var express = require("express"),
    app = express()

var router = express.Router();

router.get('/', function(req, res) {
   res.sendFile(__dirname + "/exibir.html");
});

app.use(router);

app.listen(process.env.NODEJS_PORT, function() {

  var port = process.env.NODEJS_PORT
  var host = "localhost"

  console.log("GlobalPaaS nodejs-teste server running on http://%s:%s",host,port);
});


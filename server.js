const express = require('express')
const app = express()
const http = require('http').createServer(app)
const mysql = require('mysql');
const sqlhelper = require('././public/sqlhelper');
var bodyParser = require("body-parser");
var currentdate = new Date(); 


const PORT = process.env.PORT || 3000

app.use(bodyParser.json({limit: '50mb'})); 

// Body Parser Middleware
app.use(bodyParser.urlencoded({limit: '50mb', extended: true, parameterLimit: 1000000}));

http.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`)
})

app.use(express.static(__dirname + '/public'))

app.use(function (req, res, next) {
    //Enabling CORS 
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Methods", "GET,HEAD,OPTIONS,POST,PUT");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, contentType,Content-Type, Accept, Authorization");
    next();
});

// app.use(cors({ origin: true }));

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html')
})

app.post('/Add', async (req, res) => {
    let SendID = 0;
    let query = `select * from chating as ch left join userlist as ul on ul.UserId=ch.UserID where ul.Name=?`
    let UserData = await sqlhelper.select(query, [req.body.name], (err, res) => {
        if (err) {
            console.log(err); 
            return -1;
        }else if(res.length > 0){
            SendID = res[0].UserId
            return res[0];
        }else{
            return -1;
        }
    });
    // console.log(req.body);
    if(UserData == -1){
        let MData = {};
        MData['Name'] = req.body.name;
        MData['EntryDate'] = currentdate.toISOString()
       
        let ID = await sqlhelper.insert('userlist', MData, (err, res) => {
            if (err) {
                console.log(err); return '0';
            }
            return res.insertId;
        });
        SendID = ID;
        console.log("ID--" + ID);
    }
    res.send({ID:SendID})
})

app.post('/GetData', async (req, res) => {
    console.log(req.body);
    let query = `select * from chating as ch left join userlist as ul on ul.UserId=ch.UserID`
    let Data = await sqlhelper.select(query, [], (err, res) => {
        if (err) {
            console.log(err); return '0';
        }
        return res;
    });
    // console.log("ID--" + ID);
    res.send({Chat:Data})
})

// Socket 
const io = require('socket.io')(http)

io.on('connection', (socket) => {
    console.log('Connected...')
    socket.on('message', async (msg) => {
        let MData = {};
        MData['UserID'] = msg.id;
        MData['Message'] = msg.message;
        MData['Date'] = currentdate.toISOString()
        console.log(MData);
        await sqlhelper.insert('chating', MData, (err, res) => {
            if (err) {
                console.log(err); return '0';
            }
            return res.insertId;
        });
        socket.broadcast.emit('message', msg)
    })

    socket.on('Notification', async (msg) => {
        socket.broadcast.emit('Notification', msg)
    })

    socket.on('WritingEvent', async (name) => {
        socket.broadcast.emit('WritingEvent', name)
    })

})

const DB = mysql.createPool({
	host: 'localhost',
	user: 'root',
	password: '',
    database: 'test',
    // connectionLimit: 10, // unlimited queueing
    // multipleStatements: true,
});

DB.getConnection(function(err, connection) {
	if (err) {
		console.log('sql not connected...');
		return false;
	}
	console.log('sql connected... ');
});

DB.on('error', function(err) {
  console.log("DB ERROR : " + err);
})


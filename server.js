const express = require('express')
const app = express()
const http = require('http').createServer(app)
const mysql = require('mysql');
const sqlhelper = require('././public/sqlhelper');
var bodyParser = require("body-parser");
var currentdate = new Date(); 


const PORT = process.env.PORT || 3001

app.use(bodyParser.json({limit: '50mb'})); 

// Body Parser Middleware
app.use(bodyParser.urlencoded({limit: '50mb', extended: true, parameterLimit: 1000000}));

http.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`)
})

app.use(express.static(__dirname + '/public'))

app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Methods", "GET,HEAD,OPTIONS,POST,PUT");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, contentType,Content-Type, Accept, Authorization");
    next();
});

// app.use(cors({ origin: true }));
// app.UseCors(CorsOptions.AllowAll);



// app.get('/chat', (req, res) => {
//     res.sendFile(__dirname + '/index.html')
// })

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html')
})

// app.get('/chat/:id', (req, res) => {
//     console.log(req.params);
//     res.sendFile(__dirname + '/SingleChat.html')
// })

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
    // console.log(req.body);
    let where = ""
    if(req.body.SingleUserID && req.body.SingleUserID!=0){
        where += ` AND (ch.RecID = ${req.body.SingleUserID} AND ch.UserID = ${req.body.UserID}) OR (ch.RecID = ${req.body.UserID}  AND ch.UserID = ${req.body.SingleUserID})`
    }else{
        where += ` AND ch.RecID = 0`  
    }
    let query = `select * from chating as ch left join userlist as ul on ul.UserId=ch.UserID where 1 ${where}`
    // console.log(query);
    let Data = await sqlhelper.select(query, [], (err, res) => {
        if (err) {
            console.log(err); return '0';
        }
        return res;
    });
    // console.log("ID--" + ID);
    res.send({Chat:Data})
})

// app.post('/UserNameGet', async (req, res) => {
//     let query = `select * from userlist where 1 AND UserId = ?`
//     let Data = await sqlhelper.select(query, [req.body.UserId], (err, resp) => {
//         if (err) {
//             console.log(err); 
//             // res.redirect('/');
//         }else if(resp.length > 0){
//             return resp[0].Name;
//         }else{
//             // res.redirect('/');
//         }
//     });
//     // console.log("ID--" + ID);
//     res.send({Name:Data})
// })

app.post('/AllContact', async (req, res) => {
    `ORDER BY CASE WHEN UserId = '${req.body.UserId}' THEN 1 ELSE 2 END, UserId`
    // let where = `AND UserId = ${req.body.UserId} ORDER BY UserId DESC`;
    let where = `ORDER BY CASE WHEN UserId = '${req.body.UserId}' THEN 1 ELSE 2 END, UserId`;
    let query = `select * from userlist where 1 ${where}`
    let Data = await sqlhelper.select(query, [], (err, res) => {
        if (err) {
            console.log(err); return '0';
        }
        return res;
    });
    // console.log("ID--" + ID);
    res.send({Contact:Data})
})

// Socket 
const io = require('socket.io')(http)

io.on('connection', (socket) => {
    console.log('Connected...')
    socket.on('message', async (msg) => {
        let MData = {};
        MData['UserID'] = msg.id;
        MData['RecID'] = msg.RecID;
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


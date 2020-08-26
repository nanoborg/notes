==================================
          node packages
==================================
What is node. 
- Node is a runtime environment. Meaning it can take full advantage of the hardware its running on, It's able to access other parts of the computer like the hdd etc. By installing external packages it gives node access to different libraries / frameworks to expand the functionality of javaScript.
==================================
        node file structure
==================================
npm init - json object, meta about project
npm init -y - install with yes to everything
npm install -g npm // update node
npm install - install dependency

==================================
  nodemon - reload automatically
==================================
npm i nodemon --save-dev
update package.json
  - "test": "echo \"Error: no test specified\" && exit 1"
  to 
  - "start": "nodemon server.js"
npm start - run local host

==================================
    fs - file system library
==================================
already built into node
fs = require('fs')
const buffer = fs.readFileSync(argument)
let variable = buffer.split('\n')

==================================
underscore - library ruby like functions (jeremy)
==================================
nmp i underscore
const _ = require('underscore')
_.sample(argument)

==================================
 express - sinatra like framework
==================================
npm i express
const express = require('express')
const app = express()
app.listen(port)
app.get
app.post
app.delete
req.params
req.query.name // what ever set in query sting
req.json // working with body-parser
res.send
res.json
res.render
app.use(express.static('public')
app.set('view engine', 'ejs') // used with ejs

app.get('/', (req,res) => {
    res.send
    res.json
    res.render('index', {key: value}) // used with ejs
})

==================================
      express - body-parser
==================================
npm i body-parser
const bodyParser = require('body-parser')
app.use(bodyParser.json())

==================================
      ejs - build html pages
==================================
npm i ejs

mkdir views/index.ejs

app.set('view engine', 'ejs') // used with express
views folder in root directory for .ejs files


==================================
            PG connect
==================================
npm i pg
mkdir db/config.js schema.sql
const db = require('./db/config')
const pg = require('pg')
const pool = new pg.Pool({
    database: 'db_name'
})
db.query


// module exports - part of node - object with functions
module.exports = { 
    query: (sql, params, callback) => {
        return pool.query(sql, params, callback)
    }
}
---- with out config page ------
app.get('/api/db', (req, res) => {
    db.query('select * from table;', (err, dbRes) => {
        res.json(dbRes.rows)
        // client.end() // close db
    })
})
--------------------------------

app.get('/api/:id', (req, res) => {
    // res.json(req.params)
    db.query('select * from table where id = $1;', [req.params.id], (err, dbRes) => {
        res.json(dbRes.rows)
    })

})

==================================
              AXIOS
==================================
npm i axios

link in html <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.min.js"></script> // CDN version for html

const axios = require('axios')
axios.get
axios.then - callback function
app.get('/movie', (req, res) => {

    let url = `http://omdbapi.com/?t=${req.query.title}&apikey=2f6435d9`

    axios.get(url).then(apiRes => {
        console.log(apiRes.data.Poster)
        
        res.send(`<img src="${apiRes.data.Poster}">`)
    })
})


==================================
        MORGAN - server logger
==================================
npm i morgan
var morgan = require('morgan')
app.use(morgan('combined'))


==================================
            Jest
==================================

npm i jest --save-dev

npm test

==================================
           REACT ROUTER V4
==================================

npm i react-router-dom
import { BrowserRouter as Router, Route } from 'react-router-dom'

==================================
           Live - Server
==================================
(global install)
npm install -g live-server
(to run. Go to root of folder)
live-server


==================================
     UUID - unique id generator
==================================
npm i uuid
import { v4 as uuidv4 } from 'uuid'
uuidv4() // generatte random id
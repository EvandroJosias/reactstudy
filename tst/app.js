const express = require('express')
const app = express()

app.get('/', function( req, res ) {
   res.send('Hello World, oi evandro')
})

app.listen( 3000, ()=> {
   console.log('Starting server evandro')
})


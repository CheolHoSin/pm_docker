const express = require('express')

const app = express()
const portnum = 8088

app.get('/', (req, res) => {
    res.send('HELLO WORLD!')
})

app.listen(portnum, () => {
    console.log(`App is started: ${portnum}`)
})
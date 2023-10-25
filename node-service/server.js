'use strict'

const express = require('express')

const HOST = '0.0.0.0'
const PORT = 8080

const app = express()
app.get('/', (req,res) => {
    res.send('docker coming')
})

app.listen(PORT, HOST, () => {
    console.log(`我们运行在 http://${HOST}:${PORT}`);
})
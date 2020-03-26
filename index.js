const http = require('http');

const service = http.createServer((req, res) => {
    res.writeHead(200, {
        'Content-Type': 'text/plain;charset=utf-8'
    });
    res.end('hello world')
})

service.listen(3001)
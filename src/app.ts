import express from 'express';

const app = express();
const port = parseInt(process.env.PORT || '3000');

app.get('/', (req, res) => {
    res.send({
        message: 'Hello world!',
    })
});

const server = app.listen(port, () => {
    console.log(`server started and listening on http://127.0.0.1:${port}`);
});

process.on('SIGINT', () => {
    server.close();
    process.exit(1)
});

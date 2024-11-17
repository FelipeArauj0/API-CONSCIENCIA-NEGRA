require('dotenv').config();
const corsOptions = {
    origin: /*'http://localhost:3000'*/ process.env.CORS_ORIGIN,
    methods: ['GET', 'HEAD', 'PUT', 'PATCH', 'POST', 'DELEYE'],
    credentials: true,
    allowedHeaders: ['Content-Type', 'Authorization'],
    optionsSuccessStatus: 204,
  };
  module.exports = corsOptions
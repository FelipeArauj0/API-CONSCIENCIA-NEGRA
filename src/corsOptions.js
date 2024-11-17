require('dotenv').config();
const corsOptions = {
    origin: /*'http://localhost:3000'*/ 'https://api-consciencia-negra-k95eqfkpc-felipes-projects-af697b65.vercel.appciencia-negra.vercel.app',
    methods: ['GET', 'HEAD', 'PUT', 'PATCH', 'POST', 'DELEYE'],
    credentials: true,
    allowedHeaders: ['Content-Type', 'Authorization'],
    optionsSuccessStatus: 204,
  };
  module.exports = corsOptions
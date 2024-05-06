require('../configuração');
const mongoose = require('mongoose');

function connectMongoDb() {
    mongoose.connect(dbURI, { 
      useNewUrlParser: true, 
      useUnifiedTopology: true
    });
    const db = mongoose.connection;
    db.on('error', console.error.bind(console, 'conexão error:'));
    db.once('open', () => {
      console.log('A Laura - Api esta online❤');
    });
};

module.exports.connectMongoDb = connectMongoDb;

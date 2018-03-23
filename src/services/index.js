const directory = require('./directory/directory.service.js');
// eslint-disable-next-line no-unused-vars
module.exports = function (app) {
  app.configure(directory);
};

const directory = require('./directory/directory.service.js');
const users = require('./users/users.service.js');
// eslint-disable-next-line no-unused-vars
module.exports = function (app) {
  app.configure(directory);
  app.configure(users);
};

// Initializes the `directory` service on path `/directory`
const createService = require('feathers-knex');
const createModel = require('../../models/directory.model');
const hooks = require('./directory.hooks');

module.exports = function (app) {
  const Model = createModel(app);
  const paginate = app.get('paginate');

  const options = {
    name: 'directory',
    Model,
    paginate
  };

  // Initialize our service with any options it requires
  app.use('/directory', createService(options));

  // Get our initialized service so that we can register hooks and filters
  const service = app.service('directory');

  service.hooks(hooks);
};

const { authenticate } = require('@feathersjs/authentication').hooks;

const preProcessEntries = require('../../hooks/pre-process-entries');

const preProcessUpdate = require('../../hooks/pre-process-update');

const preProcessPatch = require('../../hooks/pre-process-patch');

module.exports = {
  before: {
    all: [ authenticate('jwt') ],
    find: [],
    get: [],
    create: [preProcessEntries()],
    update: [preProcessUpdate()],
    patch: [preProcessPatch()],
    remove: []
  },

  after: {
    all: [],
    find: [],
    get: [],
    create: [],
    update: [],
    patch: [],
    remove: []
  },

  error: {
    all: [],
    find: [],
    get: [],
    create: [],
    update: [],
    patch: [],
    remove: []
  }
};

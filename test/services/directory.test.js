const assert = require('assert');
const app = require('../../src/app');

describe('\'directory\' service', () => {
  it('registered the service', () => {
    const service = app.service('directory');

    assert.ok(service, 'Registered the service');
  });
});

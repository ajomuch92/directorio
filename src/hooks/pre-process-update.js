// Use this hook to manipulate incoming or outgoing data.
// For more information on hooks see: http://docs.feathersjs.com/api/hooks.html

// eslint-disable-next-line no-unused-vars
const errors = require('@feathersjs/errors');
module.exports = function (options = {}) {
  return async context => {
    const { data } = context;

    if(!data.name) {
      throw new errors.BadRequest('A new entry must have a person name');
    }

    if(!data.telephone) {
      throw new errors.BadRequest('A new entry must have a telephone number');
    }

    if(data.mail && !checkMail(data.mail)){
      throw new errors.BadRequest('Invalid email', {
        email: data.mail
      });
    }

    context.data = {
      name: data.name,
      telephone: data.telephone,
      mail: data.mail,
      createdAt: data.createdAt,
      updatedAt: new Date()
    };

    return context;
  };
};

function checkMail(mail){
	var emailRegex = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
	return emailRegex.test(mail);
}
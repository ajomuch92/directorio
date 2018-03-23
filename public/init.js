const socket = io();
const feathersApp = feathers();
feathersApp.configure(feathers.socketio(socket));
feathersApp.configure(feathers.authentication({
  storage: window.localStorage
}));
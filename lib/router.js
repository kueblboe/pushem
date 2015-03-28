// Handle for launch screen possibly dismissed from app-body.js
dataReadyHold = null;

// Global subscriptions
if (Meteor.isClient) {
  Meteor.subscribe('users');
}

Router.configure({
  layoutTemplate: 'appBody',
  notFoundTemplate: 'notFound'
});

if (Meteor.isClient) {
  // Keep showing the launch screen on mobile devices until we have loaded
  // the app's data
  dataReadyHold = LaunchScreen.hold();
}

Router.map(function() {
  this.route('pushem', {path: '/'});
  this.route('users');
});
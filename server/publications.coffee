Meteor.publish "users", ->
  Meteor.users.find()
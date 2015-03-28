Meteor.methods
  pushem: (how) ->
    message = "#{Meteor.user().profile.name} pushed you #{how}"
    console.log message
    #TODO: send push notifications

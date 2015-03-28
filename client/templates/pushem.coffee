Template.pushem.events
  "click .button": (event) ->
    targetId = event.currentTarget.id
    return Overlay.open("authOverlay")  unless Meteor.userId()
    Meteor.call "pushem", targetId.replace('-', ' ')
    Template.appBody.addNotification({action: targetId.replace('-', ' '), title: "Pushed 'em"})

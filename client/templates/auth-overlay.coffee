# If the auth overlay is on the screen but the user is logged in,
#   then we have come back from the loginWithFacebook flow,
#   and the user has successfully signed in.
#
# We have to use an autorun for this as callbacks get lost in the
#   redirect flow.
Template.authOverlay.created = ->
  @autorun ->
    Overlay.close()  if Meteor.userId() and Overlay.template() is "authOverlay"

Template.authOverlay.events
  "click .js-signin.btn-facebook": ->
    Meteor.loginWithFacebook (error) ->
      console.log error

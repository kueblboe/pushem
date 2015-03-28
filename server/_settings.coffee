# Provide defaults for Meteor.settings
Meteor.settings = {}  if typeof Meteor.settings is "undefined"
_.defaults Meteor.settings,
  facebook:
    appId: "923385807711798"
    secret: "44a19d3246dc5818613a3324e67ad873"

ServiceConfiguration.configurations.remove service: "facebook"
ServiceConfiguration.configurations.insert
  service: "facebook"
  appId: Meteor.settings.facebook.appId
  secret: Meteor.settings.facebook.secret

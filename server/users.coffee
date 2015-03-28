Accounts.onCreateUser (options, user) ->
  user.profile = options.profile  if options.profile

  if user.services.facebook
    user.profile.avatar = "http://graph.facebook.com/#{user.services.facebook.id}/picture"

  user

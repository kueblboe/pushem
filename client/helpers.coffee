Handlebars.registerHelper "activePage", ->
  
  # includes Spacebars.kw but that's OK because the route name ain't that.
  routeNames = arguments
  _.include(routeNames, Router.current().route.name) and "active"


window.Devise =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    alert 'Hello from Backbone!'
#    new Devise.Routers.Entries()
#    Backbone.history.start()

$(document).ready ->
  Devise.initialize()

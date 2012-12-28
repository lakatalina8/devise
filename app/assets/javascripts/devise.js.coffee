window.Devise =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Devise.Routers.Points()
    new Devise.Routers.Homes()
    new Devise.Routers.NewItems()
    new Devise.Routers.PointCategories()
    new Devise.Routers.JoinPointCategories()
    new Devise.Routers.ContextElements()
    Backbone.history.start(pushState: true)

$(document).ready ->
  Devise.initialize()

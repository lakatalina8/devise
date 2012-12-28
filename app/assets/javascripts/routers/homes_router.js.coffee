class Devise.Routers.Homes extends Backbone.Router
  routes:
    'home': 'home'
    '.*':   'home'

  home:->
    view = new Devise.Views.HomesIndex()
    $('body').html(view.render().el)


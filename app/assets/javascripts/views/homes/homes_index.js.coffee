class Devise.Views.HomesIndex extends Backbone.View

  template: JST['homes/index']

  tagName: 'div'
  id: 'container'

  initialize: ->
#    alert "home index"
#    @collection.on('all', @render, this)
    this.render()

  render: ->
    $(this.el).html(@template())
    this

class Devise.Views.Points extends Backbone.View

  template :JST['points/collection']

  events:
    'click .list': 'showDoc'
    'click div.delete': 'destroy'

  initialize: ->
    @model.on('all', @render, this)
    console.log @model

  render: ->
    $(this.el).html(@template(point: @model))
    this

  showDoc:->
    Backbone.history.navigate("points/#{@model.get('id')}",true)

  destroy:->
    @model.destroy()
    this.remove()
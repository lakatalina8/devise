class Devise.Views.PointCategory extends Backbone.View

  template :JST['point_categories/collection']

  events:
    'click .list': 'show'
    'click div.delete': 'destroy'

  initialize: ->
    @model.on('all', @render, this)

  render: ->
    $(this.el).html(@template(point_categories: @model))
    this

  show:->
    Backbone.history.navigate("point_categories/#{@model.get('id')}",true)

  destroy:->
    @model.destroy()
    this.remove()

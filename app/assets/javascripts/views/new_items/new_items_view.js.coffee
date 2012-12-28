class Devise.Views.NewNewsItem extends Backbone.View

  template :JST['new_items/news_collection']

  events:
    'click .list': 'show'
    'click div.delete': 'destroy'

  initialize: ->
    @model.on('all', @render, this)
    console.log @model

  render: ->
    $(this.el).html(@template(news: @model))
    this

  show:->
    Backbone.history.navigate("new_items/#{@model.get('id')}",true)

  destroy:->
    @model.destroy()
    this.remove()

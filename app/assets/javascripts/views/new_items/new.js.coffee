class Devise.Views.News extends Backbone.View

  template :JST['new_items/new']

  tagName: 'div'
  id: 'container'

  events:
    'submit #new_news': 'save'

  initialize: ->
    @collection.on('all', @render, this)

  render: ->
    console.log @collection
    $(this.el).html(@template())
    this

  save:(event)->
    event.preventDefault()
    attributes = name: $('#new_news_name').val()
    @collection.create attributes,
#      wait: true
      success: -> $('#new_news')[0].reset()
#      error: @handleError

  handleError: (newItem, error) ->
    alert error


class Devise.Views.NewPointCategory extends Backbone.View

  template :JST['point_categories/new']

  tagName: 'div'
  id: 'container'

  events:
    'submit #new_point_category': 'save'

  initialize: ->
    @collection.on('all', @render, this)

  render: ->
    $(this.el).html(@template())
    this

  save:(event)->
    event.preventDefault()
    attributes = name: $('#new_point_category_name').val()
    @collection.create attributes,
#      wait: true
      success: -> $('#new_point_category')[0].reset()
#      error: @handleError

  handleError: (pointCategory, error) ->
    alert error
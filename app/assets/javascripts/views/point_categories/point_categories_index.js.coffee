class Devise.Views.PointCategoriesIndex extends Backbone.View

  template: JST['point_categories/index']

  tagName: 'div'
  id: 'container'

  events:
    'submit #new_point_category': 'createPointCategory'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)
#    console.log @collection
    this.render()

  render: ->
    $(this.el).html(@template())
    @collection.each(@appendPointCategory)
    this

  appendPointCategory: (pointCategory)=>
    view1 = new Devise.Views.PointCategory(model: pointCategory)
    $('#pointCategory').append(view1.render().el)
#    alert "ooo"

  createPointCategory:(event)->
    event.preventDefault()
    attributes = name: $('#new_point_category_name').val()
    @collection.create attributes,
#      wait: true
      success: -> $('#new_point_category')[0].reset()
#      error: @handleError

  handleError: (pointCategory, error) ->
    alert error


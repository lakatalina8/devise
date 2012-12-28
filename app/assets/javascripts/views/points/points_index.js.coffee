class Devise.Views.PointsIndex extends Backbone.View

  template: JST['points/index']

  tagName: 'div'
  id: 'container'

  events:
    'submit #new_point': 'createPoint'

  initialize: ->
    @collection.on('all', @render, this)
    this.render()

  render: ->
    $(this.el).html(@template(points: @collection))
    @collection.each(@appendPoints)
    this

  appendPoints: (points)=>
    view1 = new Devise.Views.Points(model: points)
    $('#points').append(view1.render().el)

  createPoint:(event)->
    event.preventDefault()
    attributes = name: $('#new_point_name').val()
    @collection.create attributes,
#      wait: true
      success: -> $('#new_point')[0].reset()
#      error: @handleError

  handleError: (point, error) ->
    alert error

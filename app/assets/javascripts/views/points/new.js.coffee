class Devise.Views.New extends Backbone.View

  template :JST['points/new']

  tagName: 'div'
  id: 'container'

  events:
    'submit #new_point': 'save'

  initialize: ->
    @collection.on('all', @render, this)

  render: ->
#    alert "kkkkk"
    console.log @collection
    $(this.el).html(@template())
    this

  save:(event)->
    event.preventDefault()
    attributes = name: $('#new_point_name').val()
#    console.log attributes
    @collection.create attributes,
      wait: true
      success: -> $('#new_point')[0].reset()
#      error: @handleError

  handleError: (point, error) ->
    alert error


class Devise.Views.Edit extends Backbone.View

  template :JST['points/edit']

  tagName: 'div'
  id: 'container'

  events:
    'submit #edit_point': 'save1'

  initialize: ->
    @model.on('all', @render, this)

  render: ->
    $(this.el).html(@template(model: @model))
    this

  save1:(event)->
#    alert "save"
    event.preventDefault()
#    event.stopPropagation()
    name = $('#edit_point_name').val()
    console.log name
    @model.save({name: name}
      wait: true
      success:->
        alert "Your change save"
        $('#edit_point')[0].reset()
      error: @handleError
    )

  handleError: (point, error) ->
    alert error


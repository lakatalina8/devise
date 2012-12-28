class Devise.Views.EditPointCategory extends Backbone.View

  template :JST['point_categories/edit']

  tagName: 'div'
  id: 'container'

  events:
    'submit #edit_point_category': 'save1'

  initialize: ->
    @model.on('all', @render, this)

  render: ->
    $(this.el).html(@template(model: @model))
    this

  save1:(event)->
    event.preventDefault()
    name = $('#edit_point_category_name').val()
    console.log name
    @model.save({name: name}
      wait: true
      success:->
        alert "Your change save"
        $('#edit_point_category')[0].reset()
#      error: @handleError
    )

  handleError: (pointCategory, error) ->
    alert error


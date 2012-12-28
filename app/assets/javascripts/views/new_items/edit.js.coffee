class Devise.Views.EditNews extends Backbone.View

  template :JST['new_items/edit']

  tagName: 'div'
  id: 'container'

  events:
    'submit #edit_news': 'save1'

  initialize: ->
    @model.on('all', @render, this)

  render: ->
    $(this.el).html(@template(model: @model))
    this

  save1:(event)->
    event.preventDefault()
    name = $('#edit_news_name').val()
    console.log name
    @model.save({name: name}
      wait: true
      success:->
        alert "Your change save"
        $('#edit_news')[0].reset()
      error: @handleError
    )

  handleError: (newItem, error) ->
    alert error


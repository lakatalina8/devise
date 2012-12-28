class Devise.Views.NewsIndex extends Backbone.View

  template: JST['new_items/index']

  tagName: 'div'
  id: 'container'

  events:
    'submit #new_news1': 'createNews'

  initialize: ->
    @collection.on('all', @render, this)
#    console.log @collection
    this.render()

  render: ->
    $(this.el).html(@template(news: @collection))
    @collection.each(@appendNews)
    this

  appendNews: (news)=>
    view1 = new Devise.Views.NewNewsItem(model: news)
    $('#news').append(view1.render().el)

  createNews:(event)->
    event.preventDefault()
    attributes = name: $('#new_news_name1').val()
    @collection.create attributes,
#      wait: true
      success: ->
         $('#new_news1')[0].reset()
         wait: true

#      error: @handleError

  handleError: (newItem, error) ->
      alert error

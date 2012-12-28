class Devise.Routers.NewItems extends Backbone.Router

  routes:
    'new_items/new':           'newNews',
    'new_items/:id':           'edit',
    'new_items':               'index',


  edit:(id)->
    model = new Devise.Models.NewItem id: id
    view = new Devise.Views.EditNews model: model
    collection = new Devise.Collections.NewItems [model]
    model.fetch()
    $('body').html(view.render().el)

  index: ->
    @collection = new Devise.Collections.NewItems()
    @collection.fetch()

    view = new Devise.Views.NewsIndex(collection: @collection)
    $('body').html(view.render().el)

  newNews: ->
    @collection = new Devise.Collections.NewItems()
    @collection.fetch()
    view = new Devise.Views.News({collection: @collection})
    $('body').html(view.render().el)


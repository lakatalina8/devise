class Devise.Routers.PointCategories extends Backbone.Router

  routes:
    'point_categories/new':            'newCategoryPoint',
    'point_categories/:id':            'edit',
    'point_categories':                'index',

  edit:(id)->
    model = new Devise.Models.PointCategory id: id
    view = new Devise.Views.EditPointCategory model: model
    collection = new Devise.Collections.PointCategories [model]
    model.fetch()
    $('body').html(view.render().el)

  index: ->
    @collection = new Devise.Collections.PointCategories()
    @collection.fetch()
    view = new Devise.Views.PointCategoriesIndex(collection: @collection)
    $('body').html(view.render().el)

  newCategoryPoint: ->
    @collection = new Devise.Collections.PointCategories()
    @collection.fetch()
    view = new Devise.Views.NewPointCategory({ collection: @collection})
    $('body').html(view.render().el)


class Devise.Routers.Points extends Backbone.Router
  routes:
    'points/new':            'newPoint'
    'points/:id':            'edit',
    'points':                'index',

#  initialize:  ->
#    @collection = new Devise.Collections.Points()
#    @collection.fetch()
#    console.log @collection


  edit:(id)->
    model = new Devise.Models.Point id: id
    view = new Devise.Views.Edit model: model
    collection = new Devise.Collections.Points [model]
    model.fetch()
    $('body').html(view.render().el)
  #    pointCategory = new Devise.Models.JoinPointCategory
  #    collection1 = new Devise.Collections.JoinPointCategories [pointCategory]
  #    pointCategory.fetch(point_id: id)
  #    console.log pointCategory

  index: ->
    @collection = new Devise.Collections.Points()
    @collection.fetch()

    view = new Devise.Views.PointsIndex(collection: @collection)
    $('body').html(view.render().el)

  newPoint: ->
    @collection = new Devise.Collections.Points()
    @collection.fetch()
    view = new Devise.Views.New({ collection: @collection})
    $('body').html(view.render().el)

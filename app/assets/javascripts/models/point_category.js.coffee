class Devise.Models.PointCategory extends Backbone.Model

  validate: (attr)->
    if (!attr.name)
      "name can't be blank, oops"

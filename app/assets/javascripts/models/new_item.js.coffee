class Devise.Models.NewItem extends Backbone.Model

  validate: (attr)->
    if (!attr.name)
      "name can't be blank, oops"

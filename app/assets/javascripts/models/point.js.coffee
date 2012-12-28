class Devise.Models.Point extends Backbone.RelationalModel
  paramRoot: 'point'
#  urlRoot: '/api/points'
#  idAttribute: 'id'

  validate: (attr)->
    if (!attr.name)
      "name can't be blank, oops"

  relations: [
    type: Backbone.HasMany
    key: 'context_elements'
    relatedModel: 'Devise.Models.ContextElement'
    collectionType: 'Devise.Collections.ContextElements'
    includeInJSON: false
    reverseRelation:
      key: 'point_id',
      includeInJSON: 'id'
  ]
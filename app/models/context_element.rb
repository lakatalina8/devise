class ContextElement < ActiveRecord::Base
  belongs_to :point
  belongs_to :new_item
  has_one :contact
  has_one :text
  has_one :gallery
end

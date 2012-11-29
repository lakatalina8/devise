class NewCategory < ActiveRecord::Base
  has_many :new_items
end

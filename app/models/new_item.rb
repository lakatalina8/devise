class NewItem < ActiveRecord::Base
  belongs_to :new_category
  has_many :context_elements
end

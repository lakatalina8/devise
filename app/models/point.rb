class Point < ActiveRecord::Base
  #has_many :join_point_categories
  has_many :point_categories, :through => :join_point_categories
  has_many :context_elements
end

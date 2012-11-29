class PointCategory < ActiveRecord::Base
 # has_many :join_point_categories
  has_many :points, :through => :join_point_categories
end

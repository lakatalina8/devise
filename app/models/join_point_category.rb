class JoinPointCategory < ActiveRecord::Base
  belongs_to :point
  belongs_to :point_category
end

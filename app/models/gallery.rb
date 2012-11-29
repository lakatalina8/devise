class Gallery < ActiveRecord::Base
  belongs_to :context_element
  has_many :graphics
end

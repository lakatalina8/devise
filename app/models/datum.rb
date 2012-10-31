class Datum < ActiveRecord::Base
  belongs_to :category
  has_one :content
end

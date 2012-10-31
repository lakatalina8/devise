class Content < ActiveRecord::Base
  belongs_to :tochka
  belongs_to :datum
  has_one :contact
  has_one :text
  has_many :graphics
end

class Tochka < ActiveRecord::Base
  has_many :join_tochka_tcategories
  has_many :tcategories, :through => :join_tochka_tcategories
  has_one :content
end

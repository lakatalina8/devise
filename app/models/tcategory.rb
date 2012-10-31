class Tcategory < ActiveRecord::Base
  has_many :join_tochka_tcategories
  has_many :tochkas, :through => :join_tochka_tcategories
end

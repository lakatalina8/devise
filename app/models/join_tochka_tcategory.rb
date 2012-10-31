class JoinTochkaTcategory < ActiveRecord::Base
  belongs_to :tochka
  belongs_to :tcategory
end

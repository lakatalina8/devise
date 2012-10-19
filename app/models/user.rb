class User < ActiveRecord::Base

  resourcify

  rolify

  # resourcify   #Use the resourcify method in all models you want to put a role on
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

end

class Assignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :role
end

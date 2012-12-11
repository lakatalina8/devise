class AdminPagesController < ApplicationController
 #before_filter :authenticate_user!
 # before_filter :only_allow_admin, :only => [ :index ]

  def index
   # @current_user = User.find(params[:id])
  end

  #private
  #
  #def only_allow_admin
  #  redirect_to root_path, :alert => 'Not authorized as an administrator.' unless user.has_role? :admin
  #end

end

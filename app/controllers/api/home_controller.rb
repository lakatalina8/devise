class Api::HomeController < ApplicationController
  def index
    @title = "Home"
    #@users = User.all
  end
end

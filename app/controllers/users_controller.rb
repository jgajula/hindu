class UsersController < ApplicationController

  def new
  end

  def sign_up
    @user = User.new
    render layout: false
  end


  def sign_in
    render layout: false

  end

  def create
    @user = params[:user]


  end



end

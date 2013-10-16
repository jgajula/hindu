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
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.zipcode = params[:user][:zipcode]
    @user.valid?
    #if @user.errors.blank?
    #  @user.save
    #end

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: root_path }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end




  end



end

class UsersController < ApplicationController
  require 'digest'

  def new
  end

  def sign_up
    @user = User.new
    render layout: false
  end


  def sign_in
    @user = User.new
    render layout: false

  end


  def verify


  end

  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.zipcode = params[:user][:zipcode]
    @user.confirmation_token = Digest::SHA256.hexdigest(@user.email + "racha")
    @user.valid?
    #if @user.errors.blank?
    #  @user.save
    #end

    respond_to do |format|
      if @user.save
        UserMailer.confirmation_email(@user).deliver
        format.html { redirect_to root_path, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: root_path }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  def confirm

    @user = User.where(email: params[:email]).first

    if(@user)

      if  Digest::SHA256.hexdigest(params[:email] + "racha") == @user.confirmation_token
        @user.confirmed = true
        @user.save
        logger.debug @user.errors.inspect
        if @user.errors.empty?
          respond_to do |format|
            format.html { redirect_to root_path, notice: 'Thanks, your account is confirmed!'}
          end
        else
          respond_to do |format|
            format.html { redirect_to root_path, alert: 'Sorry, something went wrong, please try again1'}
          end
        end

      else
        respond_to do |format|
          format.html { redirect_to root_path, alert: 'Sorry, something went wrong, please try again2'}
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path, alert: 'Sorry, something went wrong, please try again3'}
      end
    end
  end


end

class UsersController < ApplicationController
  skip_before_filter :authorize, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      flash[:notice] = "Account #{@user.username} created"
      redirect_to root_url
    else
      render :action => :new
    end

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated"
      redirect_to root_url
    else
      render :action => :edit
    end
  
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    reset_session
    redirect_to root_url
  end

end

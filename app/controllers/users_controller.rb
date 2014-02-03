class UsersController < ApplicationController
  def show
  	id = params[:id]
  	@user = User.find(id)
  end

  def new
  	@user = User.new
  end

  def create

  	@user=User.new(params.require(:user).permit(:email, :password, :password_confirmation))
    if @user.save
      flash[:notice] = "Welcome to Vetted!"
      #sign_in @user
      redirect_to @user
    else
      render'new'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end
end

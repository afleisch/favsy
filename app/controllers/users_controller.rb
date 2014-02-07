class UsersController < ApplicationController
  def show
  	id = params[:id]
  	@user = User.find(id)
  end

  def new
  	@user = User.new
  end

  def create
    new_user = params.require(:user).permit(:email, :password, :password_confirmation)
    @user=User.new(new_user)
    if @user.save
      flash[:notice] = "Welcome to Vetted!"
      sign_in @user
      redirect_to @user
    else
      render'new'
    end
  end

  #currently there is no form for this
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    render :show
  end
end

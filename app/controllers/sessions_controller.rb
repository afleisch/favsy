class SessionsController < ApplicationController
  def new
  end

  def create
  user=User.find_by_email(params[:session][:email].downcase)
  id = user.id
  
  end

  def destroy
  end
end

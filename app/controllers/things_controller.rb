class ThingsController < ApplicationController
  include ThingsHelper
  include SessionsHelper

  before_filter :signed_in_user, only: [:create, :new, :edit, :update]
  # before_filter :check_thing_owner, only: [:new, :create, :destroy, :update, :edit]


  def index
    redirect_to(root_path)
  end

  def new
    @thing = Thing.new
  end

  def create
    new_thing = params.require(:thing).permit(:name, :description, :reason, :street, :city, :state, :zip_code)
    new_thing[:user_id]= current_user.id 
    @thing = Thing.create(new_thing)
    render :show 
  end

  def show
    id = params[:id]
    @thing = Thing.find(id)
  end

  def edit
    id = params[:id]
    @thing = Thing.find(id)
    render :edit
  end

  def update
    id = params[:id]
    thing = Thing.find(id)
    updated_attributes = params.require(:thing).permit(:name, :description, :reason, :street, :city, :state, :zip_code)
    thing.update_attributes(updated_attributes)
    render :show
  end

  def destroy
    id = params[:id]
    thing = Thing.find(id)
    thing.destroy
    redirect_to(things)
  end

  def get_address
    id = params[:id]
    @thing = Thing.find(id)
    @address = @thing.street + ", " + @thing.city + ", " + @thing.state + ", " + @thing.zip_code
    return @address
  end
end

class ThingsController < ApplicationController
  include ThingsHelper
  include SessionsHelper

  before_filter :signed_in_user, only: [:create, :new, :edit, :update, :destroy]
  before_filter :check_thing_owner, only: [:new, :create, :destroy, :update, :edit]
  before_action :get_address
  before_action :get_map_url

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
    redirect_to user_path(current_user.id)
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
    thing_id = params[:id]
    @thing = current_user.things.find(thing_id)
    new_attributes = params.require(:thing).permit(:name, :description, :reason, :street, :state, :zip_code)
    @thing.update_attributes(new_attributes)
    render :show
  end

  def destroy
    id = params[:id]
    thing = Thing.find(id)
    thing.destroy
    redirect_to user_path(current_user.id)
  end

 
end

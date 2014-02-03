class ThingsController < ApplicationController
  def index
    @things = Thing.all
  end

  def new
    @thing = Thing.new
  end

  def create
    new_thing = params.require(:thing).permit(:name, :description, :reason, :street, :city, :state, :zip_code)
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
  end

  def update
    @thing = current_user.things.where(:id => params[:id])
    @thing.update_attributes(params[:thing])
    render :show
  end

  def destroy
    @thing = current_user.things.where(:id => params[:id])
    @thing.delete
    redirect_to(things)
  end
end

module ThingsHelper
	def check_thing_owner
		thing = current_user.things.find(params[:id])
		if thing.nil?
		flash[:error] = "That's not your thing."
		redirect_to thing_path(params[:id])
		end
	end	
  #find the thing, and concat the address fields into one string
	def get_address
    id = params[:id]
    @thing = Thing.find(id)
    @address = @thing.street + ", " + @thing.city + ", " + @thing.state + ", " + @thing.zip_code
    return @address
  end
  #take address string and insert into google map api format so map will render
  def get_map_url
    @address = get_address
    @map_url = "https://maps.googleapis.com/maps/api/staticmap?markers=color:red%7Clabel:C%7C#{@address}&zoom=13&size=300x300&sensor=false" 
  end
  
end

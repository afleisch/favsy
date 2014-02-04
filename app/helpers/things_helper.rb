module ThingsHelper
	def check_thing_owner
		thing = current_user.things.find(params[:id])
		if thing.nil?
		flash[:error] = "That's not your thing."
			redirect_to thing_path(params[:id])
		end
	end	
end

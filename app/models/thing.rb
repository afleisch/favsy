class Thing < ActiveRecord::Base
	belongs_to :user
	#only use US state abbreviations
	validates_length_of :state, is: 2, :on => :create
	#zip codes have to be 5 digits
	validates_length_of :zip_code, is: 5, :on => :create

	
end
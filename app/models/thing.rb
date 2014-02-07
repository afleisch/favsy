class Thing < ActiveRecord::Base
	belongs_to :user
	validates_length_of :state, is: 2, :on => :create
	# too_short: "Please enter %{count}-character state abbreviation" }
	validates_length_of :zip_code, is: 5, :on => :create
	# validates_length_of :password, :in => 6..15, :on => :create
	
end
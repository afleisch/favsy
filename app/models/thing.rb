class Thing < ActiveRecord::Base
	belongs_to :user
	# validates :state, length: { is: 2, 
	# too_short: "Please enter %{count}-character state abbreviation" }
	# validates :zip_code, length: { is: 5 }
	# validates_length_of :password, :in => 6..15, :on => :create
	
end
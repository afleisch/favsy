class Thing < ActiveRecord::Base
	belongs_to :user
	validates_length_of :state, is: 2, :on => :create
	validates_length_of :zip_code, is: 5, :on => :create
	
	
end
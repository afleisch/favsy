class User < ActiveRecord::Base
	has_secure_password
	before_save :create_remember_token
	has_many :things
	#make sure password and password_confirmation match
	validates :password, confirmation: true
	#do not create duplicate users with the same email address
	validates :email, uniqueness: { case_sensitive: false }
	#make sure email is a valid format
	#see http://ruby.railstutorial.org/chapters/modeling-users#sec-creating_user_objects
	#for breakdown of regex
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	#password must be at least 6 characters and no more than 15
	validates_length_of :password, :in => 6..15, :on => :create

	private

	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end

end

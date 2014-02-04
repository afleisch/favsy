class User < ActiveRecord::Base
	has_secure_password
	before_save :create_remember_token
	has_many :things
	validates :password, confirmation: true
	validates :email, confirmation: true
	validates :email, uniqueness: { case_sensitive: false }
	




	private

	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end





end

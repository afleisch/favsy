class User < ActiveRecord::Base
	has_secure_password
	before_save :create_remember_token
	has_many :things
	validates :password, confirmation: true
	validates :email, confirmation: true
	validates :email, uniqueness: { case_sensitive: false }
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_length_of :password, :in => 6..15, :on => :create
	




	private

	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end





end

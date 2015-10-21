class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  has_secure_password
  #Associations
  has_many :posts

  #Accessors
  attr_accessor :name, :email

  #Validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end

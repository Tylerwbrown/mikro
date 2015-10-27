class Post < ActiveRecord::Base
  #Associations
  belongs_to :user

  attr_accessor :title, :content

  #Validations
  validates :content, presence: true
  validates :title, presence: true
end

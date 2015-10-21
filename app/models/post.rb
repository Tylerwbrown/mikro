class Post < ActiveRecord::Base
  #Associations
  belongs_to :user

  #Validations
  validates :content, presence: true
end

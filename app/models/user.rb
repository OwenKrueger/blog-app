class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Rails representes its relations through these statements
  # Available relations are 
  # belongs_to - (is dependent upon object)
  # has_one - (Is owner of a single object)
  # has_many - (Is owner of multiple objects)
  # has_many :through - (Is owner of multiple objects through an associative entity)
  # has_one :through - (Is owner of one object through an associative entity)
  # has_and_belongs_to_many - (Database Spaghetti)
  # if you didnt understand all of this please read http://guides.rubyonrails.org/association_basics.html#the-types-of-associations
  
  #the user object owns many posts
  has_many :posts

  #the user object owns many comments
  # If a user is deleted, this will cause a deletion of their comments as well.
  has_many :comments, dependent: :destory
end

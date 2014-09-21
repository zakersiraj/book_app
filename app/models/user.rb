class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
 
  validates :name, presence: true, length: {maximum: 50 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6 }
  validates :password_confirmation, presence: true
end

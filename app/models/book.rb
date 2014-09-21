class Book < ActiveRecord::Base
  attr_accessible :author, :title, :name, :password, :password_confirmation
  has_secure_password
  validates :title, length: { maximum: 50 }
  validates :author, length: { maximum: 50 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end

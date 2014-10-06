class Book < ActiveRecord::Base
  attr_accessible :author, :title
  validates :title, length: { maximum: 50 }
  validates :author, length: { maximum: 50 }
end

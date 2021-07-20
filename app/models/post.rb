class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  attachment :image
  has_many :post_comments
end

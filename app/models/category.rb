class Category < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :posts, dependent: :destroy
  attachment :image
end

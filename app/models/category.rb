class Category < ApplicationRecord
  has_many :experiences
  has_many :post_categories
  has_many :posts, through: :post_categories
end

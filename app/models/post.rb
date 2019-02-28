class Post < ApplicationRecord
  belongs_to :user
  has_many :post_categories
  has_many :categories, through: :post_categories

  STATUSES = ["draft", "published"]
  validates :status, inclusion: {in: STATUSES}
end

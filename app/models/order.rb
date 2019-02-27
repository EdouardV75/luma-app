class Order < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  # has_one :company, through: :user
  validates :status, inclusion: { in: ["pending", "payed", "rejected"] }
end

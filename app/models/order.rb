class Order < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  validates :status, inclusion: { in: ["pending", "payed", "rejected"] }, default: "pending"
end

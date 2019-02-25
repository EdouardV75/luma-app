class Order < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  validate :status, inclusion: { in: ["pending", "payed", "rejected"] }, default: "pending"
end

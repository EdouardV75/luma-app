class Order < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  monetize :amount_cents
end

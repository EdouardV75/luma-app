class Experience < ApplicationRecord
  belongs_to :category
  has_many :orders

  monetize :price_cents

  include PgSearch
  pg_search_scope :global_search,
  against: %i[name description partner_name],
  associated_against: {
    category: [:name]
  },
  using: {
    tsearch: { prefix: true }
  }
end

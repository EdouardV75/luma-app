class Experience < ApplicationRecord
  belongs_to :category
  has_many :orders
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

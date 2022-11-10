class Restaurant < ApplicationRecord
  has_many :reviews, dependent: destroy

  CATEGORIES = %w[chinese italian japanese french belgian]

  validates :categories, inclusion: { in: CATEGORIES }
end

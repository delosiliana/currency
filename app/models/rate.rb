class Rate < ApplicationRecord
  validates :rate, presence: true, numericality: { greater_than: 0 }
end

class Airport < ApplicationRecord
  validates :code, presence: true, uniqueness: true, length: { in: 3..4 }
end

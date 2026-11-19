class Passenger < ApplicationRecord
  validates :name, :email, presence: true
  validates :name, length: { in: 2..24 }
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end

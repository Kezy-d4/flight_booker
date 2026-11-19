class Passenger < ApplicationRecord
  validates :name, :email, presence: true
  validates :name, length: { in: 2..24 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  belongs_to :booking
end

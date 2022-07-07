class Room < ApplicationRecord
  belongs_to :hotel
  has_many :bookings, dependent: :destroy
  validates :capacity, presence: true, numericality: { only_integer: true, greather_than: 0, message: "Doit être supérieur à 0" }
  validates :price_per_night, presence: true, numericality: { greather_than: 0, message: "Doit être supérieur à 0" }
end

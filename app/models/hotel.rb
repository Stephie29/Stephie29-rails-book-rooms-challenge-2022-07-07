class Hotel < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_many :bookings, through: :rooms
  validates :name, :address, presence: true
end

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :starts_at, :ends_at, presence: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if ends_at.blank? || starts_at.blank?

    if ends_at < starts_at
      errors.add(:ends_at, "doit être supérieur à la date d'arrivée")
    end
  end
end

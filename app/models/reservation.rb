class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :massage

  validates :start_time, presence: true
  validates :status, inclusion: { in: %w[pending confirmed canceled] }
end

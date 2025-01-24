class Massage < ApplicationRecord
  has_many :reservations, dependent: :destroy
end

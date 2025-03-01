class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  # validates :name, :model, :size, :price, presence: true
end

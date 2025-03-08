class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  # validates :name, :model, :size, :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

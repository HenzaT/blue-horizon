class Yacht < ApplicationRecord
  belongs_to :user
  validates :name, :model, :size, :price, presence: true
end

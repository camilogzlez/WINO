class WineExperience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :booking
  validates :title, :description, :date, :price,  presence: true
  validates :price, numericality: { only_integer: true }
end

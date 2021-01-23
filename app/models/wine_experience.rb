class WineExperience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :booking
  validates :title, :description, :date, :price,  presence: true
  validates :price, numericality: { only_integer: true }
  # validates :date, format: { with: /\d{2}\/\d{2}\/\d{4}/, message: "Date must be in the following format: mm/dd/yyyy" }
end

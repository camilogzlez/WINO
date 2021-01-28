class WineExperience < ApplicationRecord
  belongs_to :owner, foreign_key: "user_id", class_name: "User"
  # belongs_to :user
  has_many :bookings, dependent: :destroy
  # has_many :users, through: :booking
  has_many_attached :photos

  validates :title, :description, :date, :price,  presence: true
  validates :price, numericality: { only_integer: true }
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date.present? && date < Date.current
      errors.add(:date, "can't be in the past")
    end
  end
end

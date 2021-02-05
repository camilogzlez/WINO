class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :bookings
  has_many :wine_experiences, dependent: :nullify
  has_many :reservations, through: :wine_experiences, source: :bookings, dependent: :destroy
end

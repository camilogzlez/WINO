class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :wine_experience

end

class Information < ApplicationRecord
  belongs_to :user, optional: true
  attachment :pet_image

  with_options presence: true do
    validates :name
    validates :sex
    validates :color
    validates :birthday
    validates :pet_image
  end
end

class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image,  presence: true

  belongs_to :product

end

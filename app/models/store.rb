class Store < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true
  # validates :image, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :open_hours, presence: true
  
end

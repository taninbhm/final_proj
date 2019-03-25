class Product < ApplicationRecord
  belongs_to :category
  has_many :line_items
  validates :title, :description, :price, presence:true

  mount_uploader :Image, ImageUploader
end

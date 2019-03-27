class Product < ApplicationRecord
  belongs_to :category
  # belongs_to :order_item, optional: true
  validates :title, :description, :price, presence:true

  mount_uploader :Image, ImageUploader
end

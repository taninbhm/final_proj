class Product < ApplicationRecord
  belongs_to :category
  validates :title, :Image, :description, :price, presence:true
end

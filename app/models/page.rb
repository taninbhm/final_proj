class Page < ApplicationRecord
    validates :title, :content, presence:true
    mount_uploader :image, ImageUploader
end

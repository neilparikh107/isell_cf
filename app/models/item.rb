class Item < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, ProfilePictureUploader
end

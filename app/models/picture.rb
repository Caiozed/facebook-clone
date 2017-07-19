class Picture < ApplicationRecord
	mount_uploader :name, PictureUploader
	belongs_to :imageable, polymorphic: true
end

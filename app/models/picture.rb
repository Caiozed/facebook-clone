class Picture < ApplicationRecord
	mount_uploader :name, PictureUploader
	validates :name, presence: true
	belongs_to :imageable, polymorphic: true
end

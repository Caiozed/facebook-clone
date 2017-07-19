class Post < ApplicationRecord
	default_scope -> {order(updated_at: :desc)}
	belongs_to :user
	has_one :picture, as: :imageable, dependent: :destroy 
	has_many :likes, dependent: :destroy
	has_many :comments, dependent: :destroy
end

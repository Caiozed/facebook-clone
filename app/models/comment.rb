class Comment < ApplicationRecord
	default_scope -> {order(updated_at: :desc)}
	has_one :picture, as: :imageable, dependent: :destroy
	belongs_to :post
	belongs_to :user
end

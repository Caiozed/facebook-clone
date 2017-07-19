class Comment < ApplicationRecord
	default_scope -> {order(updated_at: :desc)}
	belongs_to :post
	belongs_to :user
end

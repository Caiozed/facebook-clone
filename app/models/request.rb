class Request < ApplicationRecord
	belongs_to :request, foreign_key: "receiver_id", class_name: "User"
	validates :receiver_id, presence: true
end

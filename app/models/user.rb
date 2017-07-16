class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts

  has_many :user_friendships,  foreign_key: "user_id"
  has_many :friends, through: :user_friendships, foreign_key: "user_id"

  has_many :requester, foreign_key: "issuer_id", class_name: "Request"

  has_many :request_to_send, foreign_key: "receiver_id", class_name: "Request"
  has_many :requests, through: :request_to_send, foreign_key: "receiver_id"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

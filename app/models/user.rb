class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :comments
  has_many :likes

  has_many :user_friendships,  foreign_key: "user_id"
  has_many :friends, through: :user_friendships, foreign_key: "user_id"

  has_many :requester, foreign_key: "issuer_id", class_name: "Request"

  has_many :requests, foreign_key: "receiver_id"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def add_friend(friend_id)
  	user_friendships.create(friend_id: friend_id)
  	friend = User.find_by(id: friend_id)
		friend.user_friendships.create(friend_id: self.id)
  end

  def is_friend?(friend)
  	user_friendships.find_by(friend_id: friend.id) 
  end
end

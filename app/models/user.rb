class User < ApplicationRecord
  has_many :post_users
  has_many :posts, through: :post_users

  has_many :sponsorships
  has_many :teams, through: :sponsorships


  has_many :entry,  foreign_key: "user_id", class_name: "Post"
  validates :name, presence: true
  has_secure_password
  validates :email, presence: true, uniqueness: true
end

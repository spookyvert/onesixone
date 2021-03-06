class Post < ApplicationRecord
  belongs_to :user

  #likes
  has_many :post_users, dependent: :destroy
  has_many :users, through: :post_users

  validates :title, presence: true
  validates :desc, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :user_id, presence: true


  has_one_attached :image
end

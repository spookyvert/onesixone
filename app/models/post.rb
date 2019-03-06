class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :desc, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :user_id, presence: true


  has_one_attached :image
end

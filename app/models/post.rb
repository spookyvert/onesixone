class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :desc, presence: true
  validates :location, presence: true
  validates :user_id, presence: true
end

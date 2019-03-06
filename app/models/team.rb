class Team < ApplicationRecord
  has_many :sponsorships
  has_many :users, through: :sponsorships

end

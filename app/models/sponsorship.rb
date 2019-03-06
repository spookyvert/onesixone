class Sponsorship < ApplicationRecord
  belongs_to :user
  belongs_to :team
end

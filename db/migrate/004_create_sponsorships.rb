class CreateSponsorships < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsorships do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :team, foreign_key: true

      t.timestamps
    end
  end
end

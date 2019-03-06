class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string "title"
      t.string "desc"
      t.integer "user_id"
      t.decimal "latitude"
      t.decimal "longitude"
      t.timestamps
    end
  end
end

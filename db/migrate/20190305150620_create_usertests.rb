class CreateUsertests < ActiveRecord::Migration[5.2]
  def change
    create_table :usertests do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :usertests, :email, unique: true
  end
end

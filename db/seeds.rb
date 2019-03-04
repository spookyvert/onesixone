# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

PostUser.destroy_all
User.destroy_all
Post.destroy_all

@user = User.create(name: "Elliot")
@u2 = User.create(name: "Shemar")

@p = Post.create(title: "WeWork Parking Lot", desc: "gnarly", user_id: @user.id,  location: "Brooklyn")

PostUser.create(user_id: @u2.id , post_id: @p.id)

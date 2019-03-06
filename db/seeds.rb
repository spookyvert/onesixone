# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

PostUser.destroy_all
Sponsorship.destroy_all
User.destroy_all
Post.destroy_all


User.create(name: "Elliot", email: "Elliot@gmail.com", password_digest: "1")
User.create(name: "Shemar", email: "Shemar@gmail.com", password_digest: "2")

Team.create(name: "Supreme")
Team.create(name: "ReVive")
Team.create(name: "HUF")
Team.create(name: "ZooYork")
Team.create(name: "DC")

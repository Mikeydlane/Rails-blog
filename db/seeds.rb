# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {first_name: "Mikey", last_name: "Lane", username: "mikeydlane", password:"open"},
  {first_name: "Joan", last_name: "Borbon", username: "jborbon", password:"open"}
  ])

Post.create([
  {body: "hello, first post", title: "First Post", image_url:"http://www.mulierchile.com/random-image/random-image-005.jpg"}
  ])

Comment.create([
  {body: "this post sucks"}
  ])

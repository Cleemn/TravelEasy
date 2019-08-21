# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jean = User.new(email: "jean@gmail.com", password:"errrrrrr" )
jean.save
paul = User.new(email: "paul@gmail.com", password:"rrrrrferge")
paul.save

clem = User.new(email: "clem@gmail.com", password:"clem00", admin: true)
clem.save

Article.destroy_all

article1 = Article.new(name: "valise", price: 3, user_id: 2, category: "cabine")
article1.save
article2 = Article.new(name: "sac à dos XXL", price: 4, user_id: 2, category: "sac-a-dos")
article2.save
article3 = Article.new(name: "duvet", price: 3, user_id: 1, category: "sac-a-dos")
article3.save
article4 = Article.new(name: "valiseXL", price: 5, user_id: 2, category: "valise")
article4.save
article5 = Article.new(name: "valiseXL", price: 5, user_id: 2, category: "valise")
article5.save
article5 = Article.new(name: "Set 2 valises", price: 5, user_id: 2, category: "valise")
article5.save

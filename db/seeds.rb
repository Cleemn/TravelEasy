# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jean = User.new(email: "jean@gmail.com", password:"errrrrrr" )
jean.save
paul = User.new(email: "Paul@gmail.com", password:"rrrrrferge")
paul.save

article1 = Article.new(name: "valise", price: 3, user_id: 2)
article1.save
article2 = Article.new(name: "sac de couchage", price: 4, user_id: 2 )
article2.save
article3 = Article.new(name: "duvet", price: 3, user_id: 1)
article3.save
article4 = Article.new(name: "valiseXL", price: 5, user_id: 2)
article4.save


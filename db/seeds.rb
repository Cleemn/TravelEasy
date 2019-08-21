# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jean = User.new(email: "jean@gmail.com", password:"jeanjean" )
jean.save
paul = User.new(email: "paul@gmail.com", password:"paulpaul")
paul.save

deborah = User.new(email: "deborah@gmail.com", password:"deborah")
paul.save

clem = User.new(email: "clem@gmail.com", password:"clem00", admin: true)
clem.save

Article.destroy_all

article1 = Article.new(name: "Valise", price: 3, description: "Valise bleue 30*50*40cm", user_id: 1, category: "cabine", address: "90 rue de la Folie Mericourt, 75011 PARIS")
article1.save
article2 = Article.new(name: "sac à dos XXL", price: 4, description: "50L - Tissu résistant à l'eau et boucle sur le dessus qui garde tout au sec", user_id: 2, category: "sac-a-dos", address: "6 rue catier bresson, 93500 PANTIN")
article2.save
article3 = Article.new(name: "Valise Samsonite", price: 3, description: "2.8 kg et peut contenir jusqu'à 124 litres", user_id: 3, category: "valise", address: "13 rue severo, 75014 PARIS")
article3.save
article4 = Article.new(name: "Valise Trolley Cabine", price: 5, description: "Super grand",  user_id: 2, category: "valise", address: "38 rue Victor Hugo, 92300 LEVALLOIS-PERRET")
article4.save
article5 = Article.new(name: "valiseXL", price: 5, description: "Valise", user_id: 2, category: "valise", address: "120 rue de la FOlie Mericourt, 75011 PARIS")
article5.save
article5 = Article.new(name: "Set 2 valises", price: 5, description: "Deux grandes valise rouges", user_id: 3, category: "valise", address: "30 rue de la FOlie Mericourt, 75011 PARIS")
article5.save
article6 = Article.new(name: "Valise cabine rigide", price: 3, description: "Valise bleue 30*50*40cm", user_id: 4, category: "cabine", address: "12 avenue de la republique, 75011 PARIS")
article6.save
article7 = Article.new(name: "Valise", price: 3, description: "Cette valise cabine rigide 55 cm de la marque Madison est le bagage idéal pour de courts séjours ", user_id: 1, category: "cabine", address: "90 rue de la Folie Mericourt, 75011 PARIS")
article7.save
article8 = Article.new(name: "Grande valise", price: 3, description: "Valise bleue 30*40*40cm", user_id: 3, category: "valise", address: "31 Rue Saint-Jacques, 75005 Paris")
article8.save
article8 = Article.new(name: "Valise Somsonite", price: 3, description: "", user_id: 1, category: "valise", address: "69 Rue du Rocher, 75008 Paris")
article8.save
article8 = Article.new(name: "Valise 4 roues", price: 3, description: "Cadenas homologué TSA", user_id: 1, category: "valise", address: "54 rue du Landy, CLICHY")
article8.save
article8 = Article.new(name: "Grande valise", price: 3, description: "Fermeture éclair 10mm haute résistance.", user_id: 4, category: "valise", address: "10 Place du 11 Novembre 1918, 75010 Paris")
article8.save
article8 = Article.new(name: "Grande valise", price: 3, description: "Valise souple 100% Polyester Waterproof (tissu 900D résistant au déchirure, imperméable a l'eau)", user_id: 3, category: "valise", address: "14 Rue Crespin du Gast, 75011 Paris")
article8.save



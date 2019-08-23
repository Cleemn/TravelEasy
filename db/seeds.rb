# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.destroy_all
Review.destroy_all
Booking.destroy_all
Article.destroy_all
User.destroy_all




jean = User.new(email: "jean@gmail.com", password:"jeanjean", first_name: "Jean", last_name: "Valjean"  )
jean.save
paul = User.new(email: "paul@gmail.com", password:"paulpaul", first_name: "Paul" , last_name: "Jean")
paul.save
deborah = User.new(email: "deborah@gmail.com", password:"deborah", first_name: "Deborah" , last_name: "Relou")
paul.save
clem = User.new(email: "clem@gmail.com", password:"clem00", admin: true, first_name: "Clementine" , last_name: "Nocton")
clem.save
gilbert = User.new(email: "gilbert@gmail.com", password:"gilbert", first_name: "Gilbert" , last_name: "Montagné")
gilbert.save
marcel = User.new(email: "marcel@gmail.com", password:"marcel", first_name: "Marcel" , last_name:"Chaud")
marcel.save
gaspard = User.new(email: "gaspard@gmail.com", password:"gaspard", first_name: "Gaspard" , last_name: "Dupont")
gaspard.save




article1 = Article.new(name: "Valise", price: 3, description: "Valise bleue 30*50*40cm", user_id: 1, category: "Valise", address: "90 rue de la Folie Mericourt, 75011 PARIS")
article1.save
article2 = Article.new(name: "sac à dos XXL", price: 4, description: "50L - Tissu résistant à l'eau et boucle sur le dessus qui garde tout au sec", user_id: 2, category: "sac-a-dos", address: "6 rue catier bresson, 93500 PANTIN")
article2.save
article3 = Article.new(name: "Valise Samsonite", price: 3, description: "2.8 kg et peut contenir jusqu'à 124 litres", user_id: 3, category: "Valise", address: "13 rue severo, 75014 PARIS")
article3.save
article4 = Article.new(name: "Valise Trolley Cabine", price: 5, description: "Super grand",  user_id: 2, category: "Valise", address: "38 rue Victor Hugo, 92300 LEVALLOIS-PERRET")
article4.save
article5 = Article.new(name: "valiseXL", price: 5, description: "Valise", user_id: 2, category: "valise", address: "120 rue de la FOlie Mericourt, 75011 PARIS")
article5.save
article5 = Article.new(name: "Set 2 valises", price: 5, description: "Deux grandes valise rouges", user_id: 3, category: "Valise", address: "30 rue de la FOlie Mericourt, 75011 PARIS", photo:"https://www.mesbagages.com/images/bagages/valise-madisson-382677.jpg")
article5.save
article6 = Article.new(name: "Valise cabine rigide", price: 3, description: "Valise bleue 30*50*40cm", user_id: 4, category: "Valise", address: "12 avenue de la republique, 75011 PARIS")
article6.save
article7 = Article.new(name: "Valise", price: 3, description: "Cette valise cabine rigide 55 cm de la marque Madison est le bagage idéal pour de courts séjours ", user_id: 1, category: "cabine", address: "90 rue de la Folie Mericourt, 75011 PARIS")
article7.save
article8 = Article.new(name: "Grande valise", price: 3, description: "Valise bleue 30*40*40cm", user_id: 3, category: "Valise", address: "31 Rue Saint-Jacques, 75005 Paris")
article8.save
article9 = Article.new(name: "Valise Somsonite", price: 3, description: "", user_id: 1, category: "valise", address: "69 Rue du Rocher, 75008 Paris")
article9.save
article10 = Article.new(name: "Valise 4 roues", price: 3, description: "Cadenas homologué TSA", user_id: 1, category: "Valise", address: "54 rue du Landy, CLICHY")
article10.save
article11 = Article.new(name: "Grande valise", price: 3, description: "Fermeture éclair 10mm haute résistance.", user_id: 4, category: "Valise", address: "10 Place du 11 Novembre 1918, 75010 Paris")
article11.save
article12 = Article.new(name: "Grande valise", price: 3, description: "Valise souple 100% Polyester Waterproof (tissu 900D résistant au déchirure, imperméable a l'eau)", user_id: 3, category: "Valise", address: "14 Rue Crespin du Gast, 75011 Paris")
article12.save


article13 = Article.new(name: "Chaussures de Trek", price: 3, description: "Co-conçues avec des trekkeurs passionnés, ces chaussures tige haute vous permettent d'évoluer sur les CHEMINS CARROSSABLES avec le maximum de confort. Taille 38)", user_id: 4, category: "Randonnée", address: "Corse", photo:"https://www.decathlon.fr/media/850/8501910/big_1619319.jpg")
article13.save
article21 = Article.new(name: "Chaussures de Rando", price: 1, description: "Pas mal, taille 44", user_id: 4, category: "Randonnée", address: "Corse", photo:"https://www.decathlon.fr/media/850/8501910/big_1619319.jpg")
article21.save
article22 = Article.new(name: "Chaussures de Trek", price: 3, description: "Ces chaussures vous permettent d'évoluer sur des chemins plutôt plats, et avec pas trop de cailloux)", user_id: 4, category: "Randonnée", address: "56 route des sanguinaire - Corse", photo:"https://www.decathlon.fr/media/850/8501910/big_1619319.jpg")
article22.save
article14 = Article.new(name: "Bâton antichoc de randonnée et trekking", price: 4, description: "Valise souple 100% Polyester Waterproof (tissu 900D résistant au déchirure, imperméable a l'eau)", user_id: 6, category: "Randonnée", address: "Corse")
article14.save
article15 = Article.new(name: "Chaussures de Randonnée", price: 2, description: "Fonctionnent plutôt bien", user_id: 4, category: "Randonnée", address: "30 route des sanguinaire, corse")
article15.save
article16 = Article.new(name: "Bâton de randonnée", price: 3, description: "90cm", user_id: 4, category: "Randonnée", address: "10 route des sanguinaires Corse")
article16.save


article17 = Article.new(name: "Chaussures de ski", price: 3, description: "Les Wid 500 sont très confortables avec leur fourrure à poils mi-longs. Elles sont dotées d'une position marche et équipées du « Heel Pad » au niveau de la cheville pour vous offrir un bon maintien.", user_id: 6, category: "Sports d'Hiver", address: "Grenoble", photo:"https://www.decathlon.fr/media/850/8501910/big_1619319.jpg")
article17.save
article18 = Article.new(name: "Ski neufs", price: 6, description: "Rigide et nerveux, ce ski répond à la moindre sollicitation. Il satisfera les skieurs les plus puissants !", user_id: 6, category: "Sports d'Hiver", address: "Grenoble")
article18.save
article19 = Article.new(name: "Raquettes", price: 4, description: "Performante, polyvalente et accessible, cette raquette à neige TSL est une merveille.", user_id: 6, category: "Sports d'Hiver", address: "Grenoble")
article19.save
article20 = Article.new(name: "Snowboard", price: 5, description: "Un snowboard avec une grande tolérance aux fautes de carre grâce à sa torsion souple entre les pieds. Bonne flottabilité en poudreuse grâce à son grand rocker avant et arrière.", user_id: 6, category: "Sports d'Hiver", address: "Grenoble")
article20.save

article23 = Article.new(
  name: "Gourde",
  price: 1,
  description: "Tentative d'amortissement de ma groude",
  user_id: 3,
  category: "Randonnée",
  address: "Paris")
article23.save

article24 = Article.new(
  name: "Kaway",
  price: 1,
  description: "Tentative d'amortissement de mon Kaway",
  user_id: 3,
  category: "Randonnée",
  address: "Paris")
article24.save

article25 = Article.new(
  name: "Tente 2 secondes",
  price: 2,
  description: "Hyper facile à déployer... et il y a des Tutos sur Youtbue pour la replier",
  user_id: 2,
  category: "Randonnée",
  address: "Bordeaux")
article25.save

article26 = Article.new(
  name: "Matelas gonflable",
  price: 1,
  description: "Attention, il est percé",
  user_id: 3,
  category: "Randonnée",
  address: "Tours")
article26.save

article27 = Article.new(
  name: "Sherpa",
  price: 160,
  description: "Partique",
  user_id: 3,
  category: "Randonnée",
  address: "Corse ajaccio")
article27.save





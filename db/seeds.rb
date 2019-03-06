# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
User.destroy_all
Company.destroy_all
Experience.destroy_all
Category.destroy_all

puts 'Creating companies...'

company1 = Company.create!(name: "Tesla", logo:'tesla_logo.png')
Company.create!(name: "SpaceX", logo:'spacex_logo.png')
Company.create!(name: "Doctolib", logo:'doctolib_logo.png')
Company.create!(name: "Luma", logo:'logo_luma_white.png')
company5 = Company.create(name: "Doctolib", logo: 'doctolib_logo.png')

puts 'Creating users...'

user1 = User.create!(email: "alex@yahoo.fr", password: "azerty", first_name: "Alex", last_name: "Cousin", company_id: company1.id, office_manager: true)
user2 = User.create!(email: "adamdylan.p@gmail.com", password: "azerty", first_name: "Dylan", last_name: "Adam", company_id: company1.id, office_manager: true)
user3 = User.create!(email: "claire.edith.demont@gmail.com", password: "azerty", first_name: "Claire", last_name: "Demont", company_id: company1.id, office_manager: true)
user4 = User.create!(email: "edouard.vaudour@icloud.com", password: "azerty", first_name: "Edouard", last_name: "Vaudour", company_id: company5.id, office_manager: true)
user5 = User.create!(email: "florent.lienard@lewagon.org", password: "azerty", first_name: "Florent", last_name: "Lienard", company_id: company5.id, office_manager: true)

puts 'Creating categories...'

cinema = Category.create!(name: 'Cinéma', emoji:'🎬')
jeux = Category.create!(name: 'Jeux', emoji:'🎯')
voyages = Category.create!(name: 'Voyages', emoji:'🗺')
nature = Category.create!(name: 'Nature', emoji:'🌿')
beaute = Category.create!(name: 'Beauté', emoji:'💅')
deco = Category.create!(name: 'Déco', emoji: '🖼')
culture = Category.create!(name: 'Culture', emoji: '🎭')
gastronomie = Category.create!(name: 'Fooding', emoji:'👨‍🍳')
sport = Category.create!(name: 'Sport', emoji: '🧗‍♀️')

puts 'Creating experiences...'

#Cinéma
Experience.create!(name: "Une année avec les meilleurs films",
  price: '49.90',
  public_price: '71.88',
  validity_date: '2019-12-31',
  description: "Profitez d'un an d'abonnement à la plateforme de VOD Mubi et son catalogue de cinéma d'auteur, films étrangers et les classiques.",
  partner_logo: 'mubi_logo.png',
  category: cinema,
  partner_name: 'Mubi',
  partner_description: " Chaque jour, notre équipe de cinéphiles vous présente un film qu'elle adore, et vous disposez d'un mois pour le voir. Soit en permanence 30 fabuleux films à découvrir.",
  photo_experience: 'mubi_xp.jpg',
)

Experience.create!(name: "Un pass de 10 places de cinéma",
  price: '59.90',
  public_price: '100',
  validity_date: '2019-12-31',
  description: "Profitez de 10 places de cinéma valables dans tous les UGC en France.",
  partner_logo: 'ugc_logo.png',
  category: cinema,
  partner_name: 'UGC',
  partner_description: "UGC, c'est 40 cinémas, dont 27 en région parisienne, avec un total de 430 salles dans toute la France.",
  photo_experience: 'ugc_xp.jpg',
)

# Jeux
Experience.create!(name: 'Les meilleurs Escapes Games',
  price: '69',
  public_price: '110',
  validity_date: '2019-12-31',
  description: "Profitez d'une session d'Escape Game pour 4 joueurs dans l'un des 8 établissements HintHunt (Paris, Toulouse, Londres, Budapest..)",
  partner_logo: 'hinthunt_logo.png',
  category: jeux,
  partner_name: 'HintHunt',
  partner_description: "Vivez une aventure unique et hors du commun avec HintHunt. Enfermés dans une salle avec votre équipe, vous avez 60 minutes pour trouver le moyen de vous échapper ! Trouvez les indices cachés dans la salle et de résoudre ensemble les énigmes qui vous permettront de vous évader !",
  photo_experience: 'hinthunt_xp.jpg',
)

Experience.create!(name: 'Une expérience de Réalité Virtuelle',
  price: '19.90',
  public_price: '29.90',
  validity_date: '2019-12-31',
  description: "Profitez d'ne session de réalité virtuelle de 45min pour 3 à 4 personnes dans l'agenda Incarna (Paris 4ème).",
  partner_logo: 'incarna_logo.jpg',
  category: jeux,
  partner_name: 'Incarna',
  partner_description: "Incarna est vous plonge en plein coeur d'un univers onirique dont vous et vos amis êtes les héros! Equipés de matériel de réalité virtuelle, vous serez projetés dans une dimension étrange et mystérieuse pour franchir les étapes d'une aventure épique riche en rebondissements. Incarna vous entraînera dans son univers, à la découverte de ses étranges habitants, de son étonnante histoire et de ses troublants mystères...",
  photo_experience: 'incarna_xp.jpg',
)

#Voyages
Experience.create!(name: "Un séjour inoubliable",
  price: '425',
  public_price: '500',
  validity_date: '2019-12-31',
  partner_logo: 'evaneos_logo.png',
  description: "Bénéficiez d'une réduction de 15\% sur votre prochain voyage Evaneos supérieur à 500€.",
  category: voyages,
  partner_name: 'Evaneos',
  partner_description: "Evaneos vous propose des voyages 100\% sur-mesure. En contact direct avec un agent de voyage local vous personnalisez vos hébergements, votre itinéraire, vos activités et bien plus encore...",
  photo_experience: 'evaneos_xp.jpg',
)

Experience.create!(name: "Un week-end en amoureux",
  price: '300',
  public_price: '350',
  validity_date: '2019-12-31',
  description: "Bénéficiez d'une réduction de 15\% sur votre prochain week-end pour 2 personnes. Valable pour tout weekend en France, supérieur à 300€.",
  partner_logo: 'weekendr_logo.jpeg',
  category: voyages,
  partner_name: 'Weekendr',
  partner_description: "Envie de t'échapper un weekend avec tes amis, ta moitié ou ta famille ? Weekendr écoute tes envies et te déniche des bons plans personnalisés pour partir en weekend à prix mini !",
  photo_experience: 'weekendr_xp.jpg',
)

#Nature
Experience.create!(name: "Adoptez un corail",
  price: '20',
  public_price: '30',
  validity_date: '2019-12-31',
  description: 'Donnez 20€ de votre cagnotte employé et votre entreprise complète pour adopter un corail.',
  partner_logo: 'coralguardian_logo.png',
  category: nature,
  partner_name: 'Coral Guardian',
  partner_description: "En adoptant un corail, vous contribuez à la préservation de l’environnement et vous soutenez les populations locales qui dépendent de l’océan pour survivre. C’est simple, facile, et utile! 🐬",
  photo_experience: 'coralguardian_xp.jpg',
)

Experience.create!(name: "Offrez un arbre",
  price: '58',
  public_price: '87',
  validity_date: '2019-12-31',
  partner_logo: 'ecotree_logo.svg',
  description: 'Achetez 2 Chênes sessiles et votre entreprise investit dans le troisième!',
  category: nature,
  partner_description: "En achetant des arbres, vous devenez propriétaire d’un actif forestier. L’arbre, en grandissant, est un bien qui prend intrinsèquement de la valeur avec le temps indépendamment de la demande ou du cours du bois 🌳",
  partner_name: 'Ecotree',
  photo_experience: 'ecotree_xp.jpg',
)

#Beauté
Experience.create!(name: "Votre box beauté",
  price: '8',
  public_price: '13',
  validity_date: '2019-12-31',
  description: "Profitez d'un mois d'abonnement à Birchbox avec livraison incluse.",
  partner_logo: 'birchbox_logo.jpg',
  category: beaute,
  partner_description: "Grâce à l'abonnement Birchbox vous recevez tous les mois une box comprenant 5 miniatures beauté à personnaliser, bénéficiez de 15\% de réduction et la livraison gratuite sur le shop. 💅",
  partner_name: 'Birchbox',
  photo_experience: 'birchbox_xp.jpg',
)

Experience.create!(name: "Votre kit voyage de soin pour homme",
  price: '10',
  public_price: '15',
  validity_date: '2019-12-31',
  description: "Ce kit comprend un nettoyant visage purifiant, un hydratant matifiant, un gel douche Cèdre de Virginie / Feuille de Sauge, et un shampoing doux purifiant au format 25ml, ainsi que 2 lingettes rafraîchissantes pour le visage.",
  partner_logo: 'horace_logo.jpg',
  category: beaute,
  partner_description: "Horace développe des essentiels de soin pour les hommes qui veulent prendre soin d’eux. Leurs produits sont naturels, agréables et faciles à utiliser et, surtout, vraiment efficaces : ils sont toujours conçus avec des ingrédients aux bénéfices prouvés.",
  partner_name: 'Horace',
  photo_experience: 'horace_xp.jpg',
)

#Déco
Experience.create!(name: "Votre abonnement mensuel de fleurs",
  price: '19.99',
  public_price: '38.99',
  validity_date: '2019-12-31',
  description: "Profitez d'un mois d'abonnement au Flower Club: recevez une composition par semaine livré à domicile.",
  partner_logo: 'bergamotte_logo.jpg',
  category: deco,
  partner_name: 'Bergamotte',
  partner_description: "Chaque mois, offrez ou recevez un à quatre bouquets de fleurs fraîchement cueillies. Des créations uniques, composées avec soin par nos fleuristes, spécialement pour nos abonnés. 💐",
  photo_experience: 'bergamotte_xp.jpg',
)

Experience.create!(name: "Votre oeuvre d'art préférée",
  price: '100',
  public_price: '120',
  validity_date: '2019-12-31',
  description: "Un bon d'achat pour une oeuvre d'art, avec livraison offerte.",
  partner_logo: 'artsper_logo.jpg',
  category: deco,
  partner_description: "À travers notre plateforme, nous vous donnons accès au plus vaste catalogue d’oeuvres d’art contemporain, provenant des meilleures galeries à travers l’Europe. Vendues à partir de 100 euros jusqu’à 100 000+ euros, Artsper rassemble des oeuvres d’artistes mondialement reconnus (Banksy, JonOne, Andy Warhol) et de jeunes talents sur des supports aussi variés que la peinture, la sculpture, la photographie, les éditions ou le dessins.",
  partner_name: 'Artsper',
  photo_experience: 'artsper_xp.jpg',
)

Experience.create!(name: "Une photographie en édition limitée",
  price: '75',
  public_price: '89',
  validity_date: '2019-12-31',
  description: "Profitez d'une photographie d'art en format classique, 24x32cm avec cadre noir. Œuvre en édition limitée et numérotée avec certificat d'authenticité.",
  partner_logo: 'yellowkorner_logo.jpg',
  category: deco,
  partner_description: "YellowKorner rend la photographie d’art accessible à tous et devient le premier éditeur de photographies d’art. YellowKorner choisit d’en éditer 1000 à 50 euros tout en gardant une qualité irréprochable sur les tirages, les finitions et sur le choix des photographes.",
  partner_name: 'Yellowkorner',
  photo_experience: 'yellowkorner_xp.jpg',
)

#Presse
# Experience.create!(name: "Un abonnement annuel pour Usbek & Rica",
#   price: '18',
#   public_price: '24',
#   validity_date: '2019-12-31',
#   description: "Trois numéros du magazine. Le magazine qui explore le futur. Tous les futurs : ceux qui nous font peur et ceux dont on rêve.",
#   partner_logo: 'usbekrica_logo.png',
#   category: presse,
#   partner_name: 'Usbek & Rica',
#   photo_experience: 'usbekrica_xp.jpg',
# )

#Culture
Experience.create!(name: "Le meilleur de la culture",
  price: '18',
  public_price: '25',
  validity_date: '2019-12-31',
  description: "Un abonnement mensuel au Pass CultureSecrets qui offre un quota de 4 places par mois, dont 2 soirées CultureSecrets, à choisir parmi les catégories Musées / Galeries, Théatres / Spectacles / Concerts et soirées CultureSecrets.",
  partner_logo: 'culturesecrets_logo.png',
  category: culture,
  partner_description: "Chaque mois nos experts sélectionnent et créent pour vous les événements incontournables de la scène culturelle. 🎭",
  partner_name: 'CultureSecrets',
  photo_experience: 'culturesecrets_xp.jpg',
)

Experience.create!(name: "Une box 6 spectacles",
  price: '69',
  public_price: '99',
  validity_date: '2019-12-31',
  description: " Profitez du coffret premium: 6 spectacles à choisir parmis plus de 1100 spectacles / mois dans 300 salles partenaires, valable 1 an, pour 1 ou 2 personnes, partout en France.",
  partner_logo: 'otheatro_logo.png',
  category: culture,
  partner_description: "Les coffrets OtheatrO vous font profiter des plus grands spectacles et des plus belles salles avec des offres adaptées à tous les budgets. Choisissez parmi plus de 1 100 spectacles / mois et d'une sélection qui plait à tous (comédie, one-man show, théâtre classique, danse, opéra...).",
  partner_name: 'Otheatro',
  photo_experience: 'otheatro_xp.jpg',
)

# #Gastronomie
Experience.create!(name: "Un panier de fruits et légumes",
  price: '20',
  public_price: '30',
  validity_date: '2019-12-31',
  description: "Profitez d'un panier de fruits et légumes de saison préselectionnés, à récupérer dans la Ruche de votre choix.",
  partner_logo: 'laruche_logo.png',
  category: culture,
  partner_description: "Commandez en ligne et achetez ce que vous voulez, quand vous le voulez : fruits, légumes, pain, fromage, viande, bière…Récupérez vos produits, chaque semaine, la Ruche vous donne rendez-vous dans votre quartier. Venez retirer votre commande et rencontrer les Producteurs.",
  partner_name: 'La ruche qui dit oui',
  photo_experience: 'laruche_xp.jpg',
)

Experience.create!(name: "Une formation de 2h sur le café",
  price: '60',
  public_price: '72',
  validity_date: '2019-12-31',
  description: "Nous vous proposons un atelier Culture Café de 3 heures qui vous permettra de parcourir les essentiels de cet univers à travers l'histoire du café de spécialité, la chaîne de ses métiers, beaucoup d’images & une dégustation de nombreux cafés !",
  partner_logo: 'lomi_logo.jpg',
  category: gastronomie,
  partner_name: 'Café Lomi',
  partner_description: "Artisans de la plantation à la tasse, depuis 2010, Lomi sélectionne les meilleurs cafés verts et les torréfie. Ils recherchent le meilleur équipement pour préparer le café de spécialité et enseignet son utilisation. Ils forment les professionnels et les particuliers aux métiers du café, et préparent des cafés d’exception dans leur coffee shop.",
  photo_experience: 'lomi_xp.jpg',
)

Experience.create!(name: "Votre box de vin",
  price: '100',
  public_price: '143',
  validity_date: '2019-12-31',
  description: "Six mois d'abonnement à la box l'Age de Raisin: recevez 2 bouteilles pépites de petits producteurs par mois, avec leurs fiches de dégustation ainsi que la Gazette du Petit Ballon",
  partner_logo: 'petitballon_logo.jpg',
  category: gastronomie,
  partner_name: 'Le Petit Ballon',
  partner_description: "Le Petit Ballon vous fait découvrir les vins autrement. De façon simple, ludique et innovante.",
  photo_experience: 'petitballon_xp.jpg',
)

Experience.create!(name: "Le meilleur du café livré chez vous",
  price: '4.90',
  public_price: '9.90',
  validity_date: '2019-12-31',
  description: "Dégustez un café sélectionné par l'équipe Kawa: recevez par la poste un sachet de 200g parmi l'ensemble de la selection.",
  partner_logo: 'kawa_logo.jpg',
  category: gastronomie,
  partner_description: "Kawa c'est votre café livré à domicile, en direct des producteurs, et torréfié artisanalement.",
  partner_name: 'Kawa',
  photo_experience: 'kawa_xp.jpg',
)

#Sport
Experience.create!(name: "Un mois illimité à la salle de sport",
  price: '14.99',
  public_price: '19.99',
  validity_date: '2019-12-31',
  description: "Un mois d'accès à la salle de sport de votre choix parmi la sélection GymLib à 19,99€.",
  partner_logo: 'gympass_logo.png',
  category: sport,
  partner_name: 'Gympass',
  partner_description: "+ de 3 000 salles de sport dans toute la France, pour un concept : le sport à la carte et sans engagement. Gymlib offre le choix entre plus de 250 activités comme le crossfit, le yoga bikram, la gym suédoise, le bodycombat ou encore la zumba. Pour en profiter, il vous suffit de trouver la salle ou l’activité la plus proche, et c’est parti ! ",
  photo_experience: 'gympass_xp.jpg',
)

Experience.create!(name: "Une session sportive avec un coach",
  price: '20',
  public_price: '40',
  validity_date: '2019-12-31',
  description: "Bénéficiez d'une séance de sport d'1h avec un coach personnel!",
  partner_logo: 'trainme_logo.png',
  category: sport,
  partner_name: 'Trainme',
  partner_description: "Trouver un entraîneur personnel dans la zone géographique de son choix est souvent difficile. TrainMe facilite grandement cette démarche en donnant à l’offre une visibilité par ville et par quartier. Grâce à l’application, l’offre gagne aussi en clarté : d’un coup d’œil, on peut voir les coachs sportifs par discipline et avoir une idée des tarifs – ainsi que les avis des autres utilisateurs. Le paiement se fait en suite de manière simple, rapide et sécurisé directement sur la plateforme.",
  photo_experience: 'trainme_xp.jpg',
)

puts 'Done!'

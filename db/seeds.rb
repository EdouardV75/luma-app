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

puts 'Creating categories...'

categories = %w(Cinéma Jeux Voyages Nature Beauté Déco Presse Culture Gastronomie Sport)
categories.each do |category|
  Category.create!(name: category)
end

puts 'Creating experiences...'

#Cinéma
Experience.create!(name: "Une année avec les meilleurs films",
  luma_price: '49,90',
  public_price: '71,88',
  validity_date: '12/31/19',
  description: "Chaque jour, nous choisissons un nouveau film et vous avez un mois entier pour le regarder. Il y aura donc toujours 30 films parmi lesquels vous pourrez faire votre choix !",
  partner_logo: 'mubi_logo.png',
  category_id: '1',
  partner_name: 'Mubi',
  photo_experience: 'mubi_xp.png',
)

Experience.create!(name: "Un pass de 10 places de Cinéma",
  luma_price: '59,90',
  public_price: '100',
  validity_date: '12/31/19',
  description: "Profitez de 10 places de cinéma chez notre partenaire ",
  partner_logo: 'ugc_logo.png',
  category_id: '1',
  partner_name: 'UGC',
  photo_experience: 'ugc_xp.jpg',
)

# Jeux
Experience.create!(name: 'Les meilleurs Escapes Games',
  luma_price: '69',
  public_price: '110',
  validity_date: '12/31/19',
  description: "HintHunt vous propose de vivre une aventure unique et hors du commun.
Enfermés dans une salle avec votre équipe de 3 à 5 joueurs, vous avez 60 minutes pour trouver le moyen de vous échapper !
A vous de trouver les indices cachés dans la salle et de résoudre ensemble les énigmes qui vous permettront de vous évader ! Une expérience inoubliable dans laquelle rapidité, logique, et esprit d'équipe seront vos meilleurs alliés",
  partner_logo: 'hinthunt_logo.png',
  category_id: '2',
  partner_name: 'HintHunt',
  photo_experience: 'hinthunt_xp.jpg',
)

Experience.create!(name: 'Une expérience unique de Réalité Virtuelle',
  luma_price: '19,90',
  public_price: '29,90',
  validity_date: '12/31/19',
  description: "Incarna est une expérience à part qui vous plongera en plein coeur d'un univers onirique dont vous et vos amis êtes les héros !
Prenez rendez-vous dans l'un de nos centres, venez nous rejoindre sur place et laissez-nous vous équiper de notre matériel de réalité virtuelle. Vous serez alors projetés dans une dimension étrange et mystérieuse préparée tout spécialement pour évaluer vos compétences et déterminer si vous avez ce qu'il faut pour devenir un explorateur !
Ce baptême du feu ne sera pas de tout repos, mais il ne sera que la première étape d'une aventure épique riche en rebondissements. Chaque nouvel épisode d'Incarna vous entraînera plus profondément dans son univers, à la découverte de ses étranges habitants, de son étonnante histoire et de ses troublants mystères...",
  partner_logo: 'incarna_logo.jpg',
  category_id: '2',
  partner_name: 'Incarana',
  photo_experience: 'incarna_xp.jpg',
)

#Voyages
Experience.create!(name: "Un séjour inoubliable",
  luma_price: '350',
  public_price: '500',
  validity_date: '12/31/19',
  description: "Choisissez parmi plus de 600 destinations avec notre partenaire",
  partner_logo: 'evaneos_logo.png',
  category_id: '3',
  partner_name: 'Evaneos',
  photo_experience: 'evaneos_xp.jpg',
)

Experience.create!(name: "Un week-end en amoureux",
  luma_price: '220',
  public_price: '350',
  validity_date: '12/31/19',
  description: "Profitez d'un week-end pour 2 en France dans le lieu de votre choix",
  partner_logo: 'weekendr_logo.jpeg',
  category_id: '3',
  partner_name: 'Weekendr',
  photo_experience: 'weekendr_xp.jpg',
)

#Nature
Experience.create!(name: "Adopte un corail",
  luma_price: '20',
  public_price: '30',
  validity_date: '12/31/19',
  description: "Chaque geste compte. En adoptant un corail, vous contribuez à la préservation de l’environnement et vous soutenez les populations locales qui dépendent de l’océan pour survivre. C’est simple, facile, et utile 🐬",
  partner_logo: 'coralguardian_logo.png',
  category_id: '4',
  partner_name: 'Coral Guardian',
  photo_experience: 'coralguardian_xp.jpg',
)

Experience.create!(name: "Offre un arbre",
  luma_price: '69',
  public_price: '87',
  validity_date: '12/31/19',
  description: "Obtenez 3 Chênes sessile. En achetant des arbres, vous devenez propriétaire d’un actif forestier. L’arbre, en grandissant, est un bien qui prend intrinsèquement de la valeur avec le temps indépendamment de la demande ou du cours du bois 🌳",
  partner_logo: 'ecotree_logo.svg',
  category_id: '4',
  partner_name: 'Ecotree',
  photo_experience: 'ecotree_xp.jpg',
)

#Beauté
Experience.create!(name: "Votre box beauté",
  luma_price: '8',
  public_price: '13',
  validity_date: '12/31/19',
  description: "Que vous cherchiez la parfaite crème qui apaisera votre peau sensible, le spray cheveux qui saura dompter votre crinière ou le rouge à lèvres de vos rêves, on s’occupe de tout ! Tous nos produits sont sélectionnés avec soin 💅",
  partner_logo: 'birchbox_logo.png',
  category_id: '5',
  partner_name: 'Birchbox',
  photo_experience: 'birchbox_xp.jpg',
)

Experience.create!(name: "Votre kit voyage de soin pour homme",
  luma_price: '10',
  public_price: '15',
  validity_date: '12/31/19',
  description: "Que vous cherchiez la parfaite crème qui apaisera votre peau sensible, le spray cheveux qui saura dompter votre crinière ou le rouge à lèvres de vos rêves, on s’occupe de tout ! Tous nos produits sont sélectionnés avec soin 🧔🏻",
  partner_logo: 'horace_logo.jpg',
  category_id: '5',
  partner_name: 'Horace',
  photo_experience: 'horace_xp.jpg',
)

#Déco
Experience.create!(name: "Votre abonnement mensuel de fleurs",
  luma_price: '19,99',
  public_price: '38,99',
  validity_date: '12/31/19',
  description: "Quel bonheur de fleurir sa vie simplement, et en toute saison ! Chaque mois, offrez ou recevez un à quatre bouquets de fleurs fraîchement cueillies. Des créations uniques, composées avec soin par nos fleuristes, spécialement pour nos abonnés 💐",
  partner_logo: 'bergamotte_logo.jpg',
  category_id: '6',
  partner_name: 'Bergamotte',
  photo_experience: 'bergamotte_xp.jpg',
)

Experience.create!(name: "Votre oeuvre d'art préférée",
  luma_price: '100',
  public_price: '120',
  validity_date: '12/31/19',
  description: "Un bon pour choisir votre oeuvre d'art préféré avec livraison offerte!",
  partner_logo: 'artsper_logo.jpg',
  category_id: '6',
  partner_name: 'Artsper',
  photo_experience: 'artsper_xp.jpg',
)

Experience.create!(name: "Une photographie en édition limitée",
  luma_price: '75',
  public_price: '89',
  validity_date: '12/31/19',
  description: "Photographie d'art en format classique, 24x32cm avec cadre noir. Œuvre en édition limitée et numérotée avec certificat d'authenticité",
  partner_logo: 'yellowkorner_logo.jpg',
  category_id: '6',
  partner_name: 'Yellowkorner',
  photo_experience: 'yellowkorner_xp.jpg',
)

#Presse
Experience.create!(name: "Un abonnement annuel pour Usbek & Rica",
  luma_price: '18',
  public_price: '24',
  validity_date: '12/31/19',
  description: "Trois numéros du magazine. Le magazine qui explore le futur. Tous les futurs : ceux qui nous font peur et ceux dont on rêve.",
  partner_logo: 'usbekrica_logo.png',
  category_id: '7',
  partner_name: 'Usbek & Rica',
  photo_experience: 'usbekrica_xp.jpg',
)

#Culture
Experience.create!(name: "Le meilleur de la culture",
  luma_price: '18',
  public_price: '25',
  validity_date: '12/31/19',
  description: "Découvrez le pass culturel parisien! 🎭",
  partner_logo: 'culturesecrets_logo.png',
  category_id: '8',
  partner_name: 'CultureSecrets',
  photo_experience: 'culturesecrets_xp.jpg',
)

Experience.create!(name: "Une box 6 spectacles",
  luma_price: '69',
  public_price: '99',
  validity_date: '12/31/19',
  description: "Le cadeau spectacle par excellence ! Offrez (ou offrez-vous) ce pack contenant 6 places qui vous permettra de choisir par plus de 1100 spectacles par mois, dans l'une de nos 300 salles partenaires dont les plus prestigieuses.",
  partner_logo: 'otheatro_logo.png',
  category_id: '8',
  partner_name: 'Otheatro',
  photo_experience: 'otheatro_xp.jpg',
)

# #Gastronomie
Experience.create!(name: "Mon panier de fruits et légumes",
  luma_price: '20',
  public_price: '30',
  validity_date: '12/31/19',
  description: "Des fruits et légumes de saison",
  partner_logo: 'laruche_logo.png',
  category_id: '9',
  partner_name: 'La ruche qui dit oui',
  photo_experience: 'laruche_xp.jpg',
)

Experience.create!(name: "Une formation de 2h sur le café",
  luma_price: '60',
  public_price: '72',
  validity_date: '12/31/19',
  description: "Nous vous proposons un atelier Culture Café de 3 heures qui vous permettra de parcourir les essentiels de cet univers à travers l'histoire du café de spécialité, la chaîne de ses métiers, beaucoup d’images & une dégustation de nombreux cafés !",
  partner_logo: 'lomi_logo.jpg',
  category_id: '9',
  partner_name: 'Café Lomi',
  photo_experience: 'lomi_xp.jpg',
)

Experience.create!(name: "Un abonnement pour une box de vin",
  luma_price: '50',
  public_price: '71,67',
  validity_date: '12/31/19',
  description: "Que vous cherchiez la parfaite crème qui apaisera votre peau sensible, le spray cheveux qui saura dompter votre crinière ou le rouge à lèvres de vos rêves, on s’occupe de tout ! Tous nos produits sont sélectionnés avec soin.",
  partner_logo: 'petitballon_logo.jpg',
  category_id: '9',
  partner_name: 'Le Petit Ballon',
  photo_experience: 'petitballon_xp.jpg',
)

Experience.create!(name: "Le meilleur du café livré chez vous",
  luma_price: '4,90',
  public_price: '9,90',
  validity_date: '12/31/19',
  description: "Que vous cherchiez la parfaite crème qui apaisera votre peau sensible, le spray cheveux qui saura dompter votre crinière ou le rouge à lèvres de vos rêves, on s’occupe de tout ! Tous nos produits sont sélectionnés avec soin.",
  partner_logo: 'kawa.png',
  category_id: '9',
  partner_name: 'Kawa',
  photo_experience: 'kawa_xp.jpg',
)

#Sport
Experience.create!(name: "Un mois d'abonnement dans vos salles favorites de sport",
  luma_price: '14,99',
  public_price: '19,99',
  validity_date: '12/31/19',
  description: "Un mois de training",
  partner_logo: 'gympass_logo.png',
  category_id: '10',
  partner_name: 'Gympass',
  photo_experience: 'gympass_xp.jpg',
)

Experience.create!(name: "Une session pour le sport de votre choix avec un coach",
  luma_price: '20',
  public_price: '40',
  validity_date: '12/31/19',
  description: "Bénéficiez d'une séance de sport d'1h avec un coach personnel!",
  partner_logo: 'trainme_logo.png',
  category_id: '10',
  partner_name: 'Trainme',
  photo_experience: 'trainme_xp.jpg',
)

puts 'Done!'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Experience.destroy_all

puts 'Creating users...'

puts 'Creating categories...'
Cinéma = Category.create!(name: 'Cinéma')
Jeux = Category.create!(name: 'Jeux')
Voyages = Category.create!(name: 'Voyages')
Nature = Category.create!(name: 'Nature')
Beauté = Category.create!(name: 'Beauté')
Déco = Category.create!(name: 'Déco')
Presse = Category.create!(name: 'Presse')
Culture = Category.create!(name: 'Culture')
Gastronomie = Category.create!(name: 'Gastronomie')
Sport = Category.create!(name: 'Sport')

puts 'Creating experiences...'

#Cinéma
Experience.create!(name: "Une année avec les meilleurs films",
  luma_price: '49,90',
  public_price: '71,88',
  validity_date: '31/12/19',
  description: "Chaque jour, nous choisissons un nouveau film et vous avez un mois entier pour le regarder. Il y aura donc toujours 30 films parmi lesquels vous pourrez faire votre choix !",
  partner_logo: 'images/mubi_logo.png',
  category_id: '1',
  partner_name: 'Mubi',
  photo_experience: 'images/mubi_xp.png',
)

Experience.create!(name: "Un pass de 10 places de Cinéma",
  luma_price: '59,90',
  public_price: '100',
  validity_date: '31/12/19',
  description: "Profitez de 10 places de cinéma chez notre partenaire ",
  partner_logo: 'images/ugc_logo.png',
  category_id: '1',
  partner_name: 'UGC',
  photo_experience: 'images/ugc_xp.jpg',
)

# Jeux
Experience.create!(name: 'Les meilleurs Escapes Games',
  luma_price: '69',
  public_price: '110',
  validity_date: '31/12/19',
  description: "HintHunt vous propose de vivre une aventure unique et hors du commun.
Enfermés dans une salle avec votre équipe de 3 à 5 joueurs, vous avez 60 minutes pour trouver le moyen de vous échapper !
A vous de trouver les indices cachés dans la salle et de résoudre ensemble les énigmes qui vous permettront de vous évader ! Une expérience inoubliable dans laquelle rapidité, logique, et esprit d'équipe seront vos meilleurs alliés",
  partner_logo: 'images/hinthunt_logo.png',
  category_id: '2',
  partner_name: 'HintHunt',
  photo_experience: 'images/hinthunt_xp.jpg',
)

Experience.create!(name: 'Une expérience unique de Réalité Virtuelle',
  luma_price: '19,90',
  public_price: '29,90',
  validity_date: '31/12/19',
  description: "Incarna est une expérience à part qui vous plongera en plein coeur d'un univers onirique dont vous et vos amis êtes les héros !
Prenez rendez-vous dans l'un de nos centres, venez nous rejoindre sur place et laissez-nous vous équiper de notre matériel de réalité virtuelle. Vous serez alors projetés dans une dimension étrange et mystérieuse préparée tout spécialement pour évaluer vos compétences et déterminer si vous avez ce qu'il faut pour devenir un explorateur !
Ce baptême du feu ne sera pas de tout repos, mais il ne sera que la première étape d'une aventure épique riche en rebondissements. Chaque nouvel épisode d'Incarna vous entraînera plus profondément dans son univers, à la découverte de ses étranges habitants, de son étonnante histoire et de ses troublants mystères...",
  partner_logo: 'images/incarna_logo.jpg',
  category_id: '2',
  partner_name: 'Incarana',
  photo_experience: 'images/incarna_xp.jpg',
)

#Voyages
Experience.create!(name: "Un séjour inoubliable",
  luma_price: '350',
  public_price: '500',
  validity_date: '31/12/19',
  description: "Choisissez parmi plus de 600 destinations avec notre partenaire",
  partner_logo: 'images/evaneos_logo.png',
  category_id: '3',
  partner_name: 'Evaneos',
  photo_experience: 'images/evaneos_xp.jpg',
)

Experience.create!(name: "Un week-end en amoureux",
  luma_price: '220',
  public_price: '350',
  validity_date: '31/12/19',
  description: "Profitez d'un week-end pour 2 en France dans le lieu de votre choix",
  partner_logo: 'images/weekendr_logo.jpeg',
  category_id: '3',
  partner_name: 'Weekendr',
  photo_experience: 'images/weekendr_xp.jpg',
)

#Nature
Experience.create!(name: "Adopte un corail",
  luma_price: '20',
  public_price: '30',
  validity_date: '31/12/19',
  description: "Chaque geste compte. En adoptant un corail, vous contribuez à la préservation de l’environnement et vous soutenez les populations locales qui dépendent de l’océan pour survivre. C’est simple, facile, et utile.",
  partner_logo: 'images/coralguardian_logo.png',
  category_id: '4',
  partner_name: 'Coral Guardian',
  photo_experience: 'images/coralguardian_xp.jpg',
)

Experience.create!(name: "Offre un arbre",
  luma_price: '69',
  public_price: '87',
  validity_date: '31/12/19',
  description: "Obtenez 3 Chênes sessile. En achetant des arbres, vous devenez propriétaire d’un actif forestier. L’arbre, en grandissant, est un bien qui prend intrinsèquement de la valeur avec le temps indépendamment de la demande ou du cours du bois",
  partner_logo: 'images/ecotree_logo.svg',
  category_id: '4',
  partner_name: 'Ecotree',
  photo_experience: 'images/ecotree_xp.jpg',
)

# #Beauté
# Birchbox
# Horace

# #Déco
# Bergamote
# Artsper
# YellowKorner

# #Presse
# Pressmium
# Les Others
# Usbek et Rica

# #Culture
# Culturesecrets
# Otheatro
# Pass

# #Gastronomie
# La Ruche qui dit oui
# Atelier Café Lomi
# Le Petit Ballon
# Kawa

# #Sport
# Gympass
# Trainme

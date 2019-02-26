# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Experience.destroy_all

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
Experience.create!(name: 'HintHunt',
  luma_price: '69',
  public_price: '110',
  validity_date: '31/12/19',
  description: "HintHunt vous propose de vivre une aventure unique et hors du commun.
Enfermés dans une salle avec votre équipe de 3 à 5 joueurs, vous avez 60 minutes pour trouver le moyen de vous échapper !
A vous de trouver les indices cachés dans la salle et de résoudre ensemble les énigmes qui vous permettront de vous évader ! Une expérience inoubliable dans laquelle rapidité, logique, et esprit d'équipe seront vos meilleurs alliés",
  partner_logo: 'images/HintHunt_logo',
  category_id: '2',
  partner_name: 'HintHunt',
  photo_experience: 'images/HintHunt_xp',
)

Experience.create!(name: 'Incarna',
  luma_price: '19,90',
  public_price: '29,90',
  validity_date: '31/12/19',
  description: "Incarna est une expérience à part qui vous plongera en plein coeur d'un univers onirique dont vous et vos amis êtes les héros !
Prenez rendez-vous dans l'un de nos centres, venez nous rejoindre sur place et laissez-nous vous équiper de notre matériel de réalité virtuelle. Vous serez alors projetés dans une dimension étrange et mystérieuse préparée tout spécialement pour évaluer vos compétences et déterminer si vous avez ce qu'il faut pour devenir un explorateur !
Ce baptême du feu ne sera pas de tout repos, mais il ne sera que la première étape d'une aventure épique riche en rebondissements. Chaque nouvel épisode d'Incarna vous entraînera plus profondément dans son univers, à la découverte de ses étranges habitants, de son étonnante histoire et de ses troublants mystères...",
  partner_logo: 'images/incarna_logo',
  category_id: '2',
  partner_name: 'Incarana',
  photo_experience: 'images/incarna_xp',
)

# Jeux
# HintHunt
# Arcana

# #Cinéma
# Mubi
# UGC

# #Voyages
# Evaneos

# #Nature
# CoralGuardian
# Nature & Découvertes

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

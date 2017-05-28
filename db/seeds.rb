# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Language.destroy_all
City.destroy_all
Guide.destroy_all
Tourist.destroy_all
Activity.destroy_all
Score.destroy_all
GuideLanguage.destroy_all
TouristLanguage.destroy_all

# Create Languages
Language.create(name: 'English', img_url: 'flag-united-state.svg')
Language.create(name: 'Spanish', img_url: 'flag-spain.svg')
Language.create(name: 'French', img_url: 'flag-france.svg')
Language.create(name: 'Japanese', img_url: 'flag-japan.svg')
Language.create(name: 'Italian', img_url: 'flag-italy.svg')
Language.create(name: 'German', img_url: 'flag-germany.svg')

# Create cities
City.create(name:'Bogota', img_url: 'city-bogota.jpg')
City.create(name:'Buenos Aires', img_url: 'city-buenos-aires.jpg')
City.create(name:'Mexico D.F', img_url: 'city-mexico-df.jpg')
City.create(name:'Sao Paulo', img_url: 'city-sao-paulo.jpg')
City.create(name:'Santiago de Chile', img_url: 'city-santiago-de-chile.jpg')
City.create(name:'Lima', img_url: 'city-lima.jpg')

# Create Guides 
# pepito
pepito = Guide.create(name:"Pepito", email:"p@gmail.com", password:"123456789", password_confirmation:"123456789", city_id:1)
pepito.languages.push(Language.first)

melissa = Guide.create(name:"Melissa", email:"melissa160@gmail.com", password:"123456789", city_id:1)
melissa.languages.push(Language.first)

carolina = Guide.create(name:"Carolina", email:"carolina@gmail.com", password:"123456789", city_id:2)
carolina.languages.push(Language.first)

dumar = Guide.create(name:"Dumar", email:"dumar@gmail.com", password:"123456789", city_id:2)
dumar.languages.push(Language.first)


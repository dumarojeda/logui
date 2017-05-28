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
Language.create(name: 'English', img_url: 'flag-united-state.png')
Language.create(name: 'Spanish', img_url: 'flag-spain.png')
Language.create(name: 'French', img_url: 'flag-france.png')
Language.create(name: 'Japanese', img_url: 'flag-japan.png')
Language.create(name: 'Italian', img_url: 'flag-italy.png')
Language.create(name: 'German', img_url: 'flag-germany.png')

# Create cities
City.create(name:'Bogotá', img_url: 'city-bogota.jpg', description: "Lorem ipsum dolor sit amet")
City.create(name:'Buenos Aires', img_url: 'city-buenos-aires.jpg', description: "Lorem ipsum dolor sit amet")
City.create(name:'Mexico D.F', img_url: 'city-mexico-df.jpg', description: "Lorem ipsum dolor sit amet")
City.create(name:'São Paulo', img_url: 'city-sao-paulo.jpg', description: "Lorem ipsum dolor sit amet")
City.create(name:'Santiago de Chile', img_url: 'city-santiago-de-chile.jpg', description: "Lorem ipsum dolor sit amet")
City.create(name:'Lima', img_url: 'city-lima.jpg', description: "Lorem ipsum dolor sit amet")

c = City.first
d = c.id

language = Language.first
l = language.id
# Create Guides
# pepito
pepito = Guide.create(name:"Pepito", email:"p@gmail.com", password:"123456789", password_confirmation:"123456789", city_id:d)
pepito.languages.push(Language.first)

melissa = Guide.create(name:"Melissa", email:"melissa160@gmail.com", password:"123456789", city_id:d+1)
melissa.languages.push(Language.second)

carolina = Guide.create(name:"Carolina", email:"carolina@gmail.com", password:"123456789", city_id:d+2)
carolina.languages.push(Language.third)

dumar = Guide.create(name:"Dumar", email:"dumar@gmail.com", password:"123456789", city_id:d+3)
dumar.languages.push(Language.fourth)

# Create Activities
first_guide = Guide.first
first_guide_id = first_guide.id

lang = Language.all.pluck(:id)
cit = City.all.pluck(:id)
18.times do
  Activity.create(name: 'Rumba bogotana', description: '<p>¿Estás preparado para la mejor fiesta de Latinoamérica? No apta para cuerpos frágiles y mentes sensibles. Te llevare en un recorrido por los mejores bares, pubs y discotecas. Rumba sin descanso toda la noche. ¿Te atreves?</p><ul><li>Itinerario</li><li>8 PM Punto de encuentro PUB ""El irlandes""</li><li>8:30 PM Repúblika Bar</li><li>9 PM Goce pagano</li><li>10 PM Chelsea</li><li>12 PM Gloss</li></ul>', img_url: 'activity-rumba-bogotana.jpg', price: 200000, guide_id: 1, hour: 6, include: 'Transporte privado, bebidas, entradas VIP.', observations: 'Este plan sólo se realiza de jueves a sábado.', city_id: cit.sample, language_id: lang.sample)
end
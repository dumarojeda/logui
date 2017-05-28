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
City.create(name:'Bogotá', img_url: 'city-bogota.jpg', description: "La capital de la cultura latinoaméricana")
City.create(name:'Buenos Aires', img_url: 'city-buenos-aires.jpg', description: "La ciudad de la furia, donde nadie sabe de mi...")
City.create(name:'Mexico D.F', img_url: 'city-mexico-df.jpg', description: "Tacos, chilaquiles, chile  mucha diversión")
City.create(name:'São Paulo', img_url: 'city-sao-paulo.jpg', description: "Puro sabor y carnaval brasileño")
City.create(name:'Santiago de Chile', img_url: 'city-santiago-de-chile.jpg', description: "La mejor ciudad para vivir y viajar en Latinoamérica")
City.create(name:'Lima', img_url: 'city-lima.jpg', description: "Los mejores sabores de latinoamérica")

c = City.first
d = c.id

language = Language.first
l = language.id
# Create Guides
# pepito
paula = Guide.create(name:"Paula", email:"paula@p.com", password:"123456789", password_confirmation:"123456789", city_id:d, description:"Hola soy Paula y como yo nadie rumbea. Soy estudiante de derecho de la universidad de los Andes. Me encanta viajar y hacer amigos de todos los países.", img_url: "guide-paula.jpg")
paula.languages.push(Language.first)

camila = Guide.create(name:"Camila", email:"camila@c.com", password:"123456789", city_id:d+1, description: "Hola soy Camila estudio psicologia, me gustan los perros y hacer yoga. Te encantarán mis tures.", img_url: "guide-camila.jpg")
camila.languages.push(Language.second)

daniela = Guide.create(name:"Daniela", email:"daniela@d.com", password:"123456789", city_id:d+2, description: "Hola soy Daniela, estudiante de la universidad Javeriana. Hablo 7 idiomas, me gusta salir a caminar y montar bici.", img_url: "guide-daniela.jpg")
daniela.languages.push(Language.third)

juan = Guide.create(name:"Juan", email:"juan@j.com", password:"123456789", city_id:d+3, description: "Hola soy Juan y estudio, filologia apasionado por los viajes, las aventuras extremas y la vida nocturna", img_url: "guide-juan.jpg")
juan.languages.push(Language.fourth)

daniel = Guide.create(name:"daniel", email:"daniel@j.com", password:"123456789", city_id:d+3, description: "Hola soy Daniel y estudio deportes, me encanta jugar futbol, rugby y todo tipo de deportes. Te divertirás mucho en mis planes.", img_url: "guide-daniel.jpg")
daniel.languages.push(Language.fourth)

ricardo = Guide.create(name:"ricardo", email:"ricardo@j.com", password:"123456789", city_id:d+3, description: "Hola soy Ricardo y mi pasión es ela rte. Estudie historia en Francia y te voy a llevar a conocer lo mejor de lac ultura bogotana.", img_url: "guide-ricardo.jpg")
ricardo.languages.push(Language.fourth)


# Create Activities
first_guide = Guide.first
first_guide_id = first_guide.id

lang = Language.all.pluck(:id)
cit = City.all.pluck(:id)


## Actividades
Activity.create(name: "Caminata al rio de la plata", city_id: d, description: "Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor.", hour: 3, includes:"Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price:25000, img_url: "caminata-al-rio-de-la-plata.jpg",  language_id: lang.sample, guide_id:first_guide_id)

Activity.create(name: "Cata de café" , city_id: d, description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 4, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 40000 , img_url: "cata-de-café.jpg", language_id: lang.sample, guide_id:first_guide_id)

Activity.create(name: "Coffee racer ride" , city_id: d , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 3, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 50000 , img_url: "coffee-racer-ride.jpg", language_id: lang.sample, guide_id:first_guide_id)

Activity.create(name: "Rumba bogotana" , city_id: d+1, description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 5, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 90000 , img_url: "rumba-bogotana.jpg", language_id: lang.sample, guide_id:first_guide_id+1)


Activity.create(name: "Las mejores carnes" , city_id: d+1 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 3, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 120000 , img_url: "las-mejores-carnes.jpg",  language_id: lang.sample, guide_id:first_guide_id+1)


Activity.create(name: "Las mejores hamburguesas" , city_id: d+1 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 2, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 30000 , img_url: "las-mejores-hamburguesas.jpg",  language_id: lang.sample, guide_id:first_guide_id+1)


Activity.create(name: "Paseo en combi" , city_id: d+2 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 4, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 100000 , img_url: "paseo-en-combi.jpg",  language_id: lang.sample, guide_id:first_guide_id+2)

Activity.create(name: "Ride en bici" , city_id: d+2 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 1, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 20000 , img_url: "ride-en-bici.jpg",  language_id: lang.sample, guide_id:first_guide_id+2)

Activity.create(name: "Skateboarding tour" , city_id: d+2 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 3, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 20000 , img_url: "skateboarding-tour.jpg",  language_id: lang.sample, guide_id:first_guide_id+2)

Activity.create(name: "Sube a las montañas" , city_id: d+3 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 2, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 10000 , img_url: "sube-a-las-montañas.jpg",  language_id: lang.sample, guide_id:first_guide_id+3)


Activity.create(name: "Taller de pintura y escultura" , city_id: d+3 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 4, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 30000 , img_url: "taller-de-pintura-y-escultura.jpg",  language_id: lang.sample, guide_id:first_guide_id+3)


Activity.create(name: "The dark side tour" , city_id: d+3 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 5, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 80000 , img_url: "the-dark-side-tour.jpg",  language_id: lang.sample, guide_id:first_guide_id+3)

Activity.create(name: "Toque de garage" , city_id: d+4 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 5, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 90000 , img_url: "toque-de-garage.jpg",  language_id: lang.sample, guide_id:first_guide_id+4)

Activity.create(name: "Tour arquitectonico" , city_id: d+4 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 3, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 90000 , img_url: "tour-arquitectonico.jpg",  language_id: lang.sample, guide_id:first_guide_id+4)


Activity.create(name: "Tour de fotografia profesional" , city_id: d+4 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 3, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 90000 , img_url: "tour-de-fotografia-profesional.jpg",  language_id: lang.sample, guide_id:first_guide_id+4)

Activity.create(name: "Tour gastrónomico" , city_id: d+5 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 3, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 90000 , img_url: "tour-gastrónomico.jpg",  language_id: lang.sample, guide_id:first_guide_id+5)

Activity.create(name: "Trekking day" , city_id: d+5 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 3, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 90000 , img_url: "trekking-day.jpg",  language_id: lang.sample, guide_id:first_guide_id+5)

Activity.create(name: "Vuela en globo" , city_id: d+5 , description:"Etiam a sem eu mi vehicula posuere. Etiam efficitur tempor auctor. Aliquam erat volutpat. Sed et tortor et est mattis imperdiet. Proin quis mauris ut mi tempus fringilla. Quisque vehicula condimentum ligula, eu consectetur nulla vehicula a. Nullam in facilisis ante, in hendrerit velit. Cras id volutpat nisi. Maecenas at mi diam. Sed cursus turpis ut quam porta, eu condimentum nulla accumsan. Ut ac aliquam nisi. Aenean a consequat risus. In in nibh quis tellus consectetur facilisis. Donec pharetra, mauris vel egestas molestie, metus sem dictum ligula, nec fermentum risus mi ac tortor." , hour: 3, includes: "Transporte, alimentación, entradas.", observations: "Estar a tiempo en el punto de encuentro. Usar bloqeador sola. Cuidar los objetos personales, llevar hidratación.", price: 90000 , img_url: "vuela-en-globo.jpg",  language_id: lang.sample, guide_id:first_guide_id+5)


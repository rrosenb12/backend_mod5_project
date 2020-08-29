# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Villager.destroy_all
Bug.destroy_all
Fish.destroy_all 
SeaCreature.destroy_all 
Fossil.destroy_all

def villagers
    response = RestClient.get('http://acnhapi.com/v1/villagers/')
    json = JSON.parse(response)
    if !json.nil?
        json.each do |key, value|
            Villager.create(name: "#{value['name']['name-USen']}", personality: "#{value['personality']}", birthday: "#{value['birthday-string']}", species: "#{value['species']}", catch_phrase: "#{value['catch-phrase']}", icon_uri: "#{value['icon_uri']}", image_uri: "#{value['image_uri']}", saying: "#{value['saying']}")
        end
    else
        puts 'error seeding villagers'
    end
end

def bugs
    response = RestClient.get('http://acnhapi.com/v1/bugs/')
    json = JSON.parse(response)
    if !json.nil?
        json.each do |key, value|
            Bug.create(name: "#{value['name']['name-USen']}", availability: "#{value['availability']['month-array-northern']} #{value['availability']['time']}", price: "#{value['price']}", flick: "#{value['price-flick']}", museum_phrase: "#{value['museum-phrase']}", catch_phrase: "#{value['catch_phrase']}", image_uri: "#{value['image_uri']}", icon_uri: "#{value['icon_uri']}")
        end
    else
        puts 'error seeding bugs'
    end
end

def fish
    response = RestClient.get('http://acnhapi.com/v1/fish/')
    json = JSON.parse(response)
    if !json.nil?
        json.each do |key, value|
            Fish.create(name: "#{value['name']['name-USen']}", availability: "#{value['availability']['month-array-northern']} #{value['availability']['time']}", price: "#{value['price']}", cj: "#{value['price-cj']}", museum_phrase: "#{value['museum-phrase']}", catch_phrase: "#{value['catch_phrase']}", image_uri: "#{value['image_uri']}", icon_uri: "#{value['icon_uri']}")
        end
    else
        puts 'error seeding fish'
    end
end

def fossils
    response = RestClient.get('http://acnhapi.com/v1/fossils/')
    json = JSON.parse(response)
    if !json.nil?
        json.each do |key, value|
            Fossil.create(name: "#{value['name']['name-USen']}", price: "#{value['price']}", museum_phrase: "#{value['museum-phrase']}", image_uri: "#{value['image_uri']}")
        end
    else
        puts 'error seeding fossils'
    end
end

def sea_creatures
    response = RestClient.get('http://acnhapi.com/v1/sea/')
    json = JSON.parse(response)
    if !json.nil?
        json.each do |key, value|
            SeaCreature.create(name: "#{value['name']['name-USen']}", availability: "#{value['availability']['month-array-northern']} #{value['availability']['time']}", price: "#{value['price']}", museum_phrase: "#{value['museum-phrase']}", catch_phrase: "#{value['catch_phrase']}", image_uri: "#{value['image_uri']}", icon_uri: "#{value['icon_uri']}")
        end
    else
        puts 'error seeding sea_creatures'
    end
end

sea_creatures
fossils
fish
villagers
bugs
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Villager.destroy_all

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

villagers
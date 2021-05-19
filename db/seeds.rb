# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
sam = { name: "SAM", address: "Nyphemburg Strasse", stars: 5, chef_name: 'Jamie Oliver' }
wayang =  { name: "Wayang", address: "Frankfurt", stars: 5, chef_name: 'Nigela Lawson'  }
amarelinho =  { name: "Amarelinho", address: "Rio de Janeiro", stars: 2, chef_name: 'Yotam Ottolenghi'  }

[ sam, wayang, amarelinho ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

puts "Creating 20 pets"
20.times do 
  Pet.create!(
    name: Faker::Beer.brand ,
    address: Faker::Address.street_name,
    species: Pet::SPECIES.sample,
    found_on: rand(1..10).days.ago
  )
end

puts "done seeding!"
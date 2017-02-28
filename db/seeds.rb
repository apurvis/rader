# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# Create Clients
10.times do
  Client.create!(
    name: Faker::Name.name,
    gender: ['m', 'f'].sample,
    country_of_origin: 'US',
    started_us_residence_at: (0..10).to_a.sample.years.ago,
    family_in_us: [true, false].sample,
    notes: Faker::Lorem.sentence,
    contact_phone_number: Faker::PhoneNumber.phone_number)
end

10.times do
  Raid.create!(
    type_of_raid: Faker::Lorem.word,
    raided_at: (0..500).to_a.sample.hours.ago,
    address: Faker::Address.street_address,
    zip_code: Faker::Address.zip,
    how_did_ice_make_its_presence_known: Faker::Lorem.sentence,
    name_of_answerer: Faker::Name.name,
    age_of_answerer: (3..120).to_a.sample,
    narrative_of_door_interaction: Faker::Lorem.sentence,
    narrative_of_entrance: Faker::Lorem.sentence,
    narrative_of_interaction_inside_home: Faker::Lorem.sentence,
    notes: Faker::Lorem.sentence)
end

clients = Client.all
raids = Raid.all
100.times do
  RaidsClient.create!(
    raid: raids.sample,
    client: clients.sample,
    arrested: [true, false].sample,
    notes: Faker::Lorem.sentence)
end

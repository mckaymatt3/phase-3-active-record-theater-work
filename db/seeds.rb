Role.destroy_all
Audition.destroy_all

# Add a console message so we can see output when the seed file runs
puts "Seeding audtions..."

# create a role 1 with random data
role1 = Role.create(
  character_name: Faker::Games::LeagueOfLegends.champion,
)

role2 = Role.create(
  character_name: Faker::Games::LeagueOfLegends.champion,
)


# run a loop 20 times for Audition
20.times do
  # create a game with random data
  Audition.create(
    actor: Faker::Superhero.name,
    location: Faker::Address.city,
    phone: Faker::PhoneNumber.phone_number,
    hired: Faker::Boolean.boolean,
    role: role1,
  )
end

# run a loop 20 times for Audition
20.times do
  # create a game with random data
  Audition.create(
    actor: Faker::Superhero.name,
    location: Faker::Address.city,
    phone: Faker::PhoneNumber.phone_number,
    hired: Faker::Boolean.boolean,
    role: role2,
  )
end

puts "Done seeding!"
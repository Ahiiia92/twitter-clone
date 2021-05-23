require 'faker'
puts 'Clean up'

Profile.destroy_all

puts 'Creating database with Profile'

10.times do
  profile = Profile.create(
    username: Faker::Internet.username,
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 10, max_length: 20)
  )
  puts 'Profile created: ' + profile.username
end


puts '10 profiles created'


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'table_print'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

10.times do |index|
  User.create(
  id: index + 1,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  description: Faker::Lorem.paragraph(sentence_count: 2),
  email: "user#{index + 1}@yopmail.com",
  password: "azerty636"
  )
end
tp User.all


10.times do |index|
  Event.create(
  id: index + 1,
  start_date: Faker::Time.forward(days: 5,  period: :evening, format: :long),
  duration: 25,
  title: Faker::Games::Pokemon.name,
  description: Faker::Lorem.paragraph(sentence_count: 2),
  price: 20,
  location: Faker::Address.city,
  organizer_id: Faker::Number.between(from: 1, to: 10)
  )
end
tp Event.all

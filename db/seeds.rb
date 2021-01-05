# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

10.times do |index|
  User.create(
  id: index + 1,
  first_name: "Utilisateur n° #{index + 1}",
  email: "user#{index + 1}@yopmail.com"
  )
end
tp User.all, :email
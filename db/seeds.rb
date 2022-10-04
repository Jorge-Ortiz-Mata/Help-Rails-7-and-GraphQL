# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  first_name: 'Jorge', last_name: 'Ortiz', street: 'My street name', number: 224,
  city: 'San Luis Potosi', postcode: 75243, country: 'Mexico'
)

User.create!(
  first_name: 'Peter', last_name: 'Parker', street: 'My street', number: 234,
  city: 'New York', postcode: 79343, country: 'USA'
)

User.create!(
  first_name: 'Harry', last_name: 'Potter', street: 'Hogwarts', number: 793,
  city: 'London', postcode: 68932, country: 'England'
)



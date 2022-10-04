# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if User.all.empty?
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
end

if Post.all.empty?
  User.first.posts.create!(body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
  User.first.posts.create!(body: 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua')
  User.second.posts.create!(body: 'Ut enim ad minim veniam')
  User.second.posts.create!(body: 'Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat')
  User.last.posts.create!(body: 'Duis aute irure dolor in reprehenderit in voluptate')
end

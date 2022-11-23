# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "clean"

Article.destroy_all

puts "create"

10.times do
  article = Article.create!(
    title: Faker::Artist.name,
    content: Faker::Hobby.activity,
  )
  puts "article #{article.id} created"
end

puts "finish"

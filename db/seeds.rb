# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TAGS = ['gatto', 'cane', 'topo', 'elefante', 'giraffa'].freeze
POSTS = ['gatto', 'cane', 'topo', 'elefante', 'giraffa'].freeze

POSTS.each do |post|
  Post.create!(
    title: "Post su #{post}",
    tags: TAGS.shuffle.take(2).map { |tag| Tag.new(name: tag) }
  )
end

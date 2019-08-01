# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
a= [1,2,3,4]
b= [0,1,2,3,4,5,6,7,8,9]

f =  ["action", "horreur", "comédie", "drame"]

100.times do
c = [a.shuffle[0],b.shuffle[1]].join(",")
d = [a.shuffle[0],b.shuffle[1]].join(",")
  user = Movie.create!(name: Faker::Movie.quote , year: Faker::Movies::BackToTheFuture.date, genre: f.shuffle, synopsis: Faker::Books::Lovecraft.sentence(word_count: 10, random_words_to_add: 1), allocine_rating: c, my_rating: d ,already_seen:Faker::Boolean.boolean)
end
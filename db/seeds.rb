# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
subjects = Subject.create([{title: "Finance" }, {title: "Politics"}, {title: "Dark Humor"}, {title: "Fitness"}])
5.times do
  u = User.create(name: Faker::Name.name, username: Faker::DragonBall.character)
  po = Post.create(title: Faker::Book.title, content: Faker::Hacker.say_something_smart, user: u, subject_id:rand(1..4))
  co = Comment.create(content: Faker::SiliconValley.quote, post: po, user: u, subject_id: rand(1..4))
  Vote.create(rank: true, votable: po, votable_type: "Post", user_id:rand(1..5))
  Vote.create(rank: true, votable: co, votable_type: "Comment", user_id:rand(1..5))
end
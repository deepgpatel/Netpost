# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  u = User.create(name: Faker::Name.name, username: Faker::DragonBall.character)
  po = Post.create(title: Faker::Book.title, content: Faker::Hacker.say_something_smart, user: u, subject_id:rand(1..4))
  subjects = Subject.create([{title: "Finance"}, {title: "Politics"}, {title: "Dark Humor"}, {title: "Fitness"}])
  co = Comment.create(content: Faker::SiliconValley.quote, post: po, user: u)
  Vote.create(rank: "like", votable: po, votable_type: "Post", user_id:rand(1..5))
  Vote.create(rank: "dislike", votable: co, votable_type: "Comment", user_id:rand(1..5))
  u.subjects << subjects
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 5.times do
  # u = User.create(name: Faker::Name.name, username: Faker::DragonBall.character)
  # po = Post.create(title: Faker::Book.title, content: Faker::Hacker.say_something_smart, user: u, subject_id:rand(1..4))
  # co = Comment.create(content: Faker::HowIMetYourMother.quote, post: po, user: u)
  # com = Comment.create(content: Faker::HowIMetYourMother.quote, post: po, user: u)
  # Vote.create(rank: "like", votable: po, votable_type: "Post", user_id:rand(1..5))
  # Vote.create(rank: "dislike", votable: co, votable_type: "Comment", user_id:rand(1..5))
  # co.user << u
  # u.comments << co
# end
subjects = Subject.create([{title: "Finance"}, {title: "Politics"}, {title: "Dark Humor"}, {title: "Food"}])

deep = User.create(name:"Deep", username:"Deep", password:"Deep")
post1 = Post.create(title:"Flatiron School", content:"Flatiron School is awesome" , user: deep, subject_id: 0)
subject1 = Subject.create(title: "Coding Bootcamps")
comment1 = Comment.create(content:"This is a comment.", post: post1, user: deep)

julio = User.create(name:"Julio", username:"Julio", password:"Julio")
post2 = Post.create(title:"Dieting", content:"How to set up your diet" , user: julio, subject_id: 1)
subject2 = Subject.create(title: "Fitness")
comment2 = Comment.create(content:"This is another comment.", post: post2, user: julio)
deep.subjects << subjects
deep.subjects << subject1
deep.posts << post1
julio.subjects << subjects
julio.subjects << subject2
julio.posts << post2

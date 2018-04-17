class User < ApplicationRecord
  has_many :posts
  has_many :votes
  has_many :user_subjects
  has_many :subjects, through: :user_subjects
  has_many :comments, through: :posts
end

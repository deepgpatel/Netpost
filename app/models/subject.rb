class Subject < ApplicationRecord
  has_many :posts
  has_many :comments, through: :posts
  has_many :user_subjects
  has_many :users, through: :user_subjects

  # validates :title, uniqueness: true
end

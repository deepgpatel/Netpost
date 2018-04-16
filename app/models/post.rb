class Post < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :comments
  has_many :votes, as: :votable
end

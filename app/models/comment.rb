class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :subject
  has_many :votes, as: :votable
end

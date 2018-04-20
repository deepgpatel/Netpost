class User < ApplicationRecord
  has_many :posts
  has_many :votes
  has_many :user_subjects
  has_many :subjects, through: :user_subjects
  has_many :comments, through: :posts

  validates :username, uniqueness: true
  # validates :password, presence: true
  validates :name, presence: true



  def count_post
     if !self.posts.empty?
        "You’ve submitted #{self.posts.count} post(s)."
     else
        "You don’t have any posts"
     end
   end

   def count_comments
     if !self.comments.empty?
      "You’ve submitted #{self.comments.count} comments."
    else
      "You don’t have any comments."
   end
  end

  def count_subjects
   if !self.subjects.empty?
     "You’re following #{self.subjects.count} subject(s)."
   else
     "You’re not following any subjects."
   end
  end
end

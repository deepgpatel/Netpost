class RemoveSubjectIdFromComment < ActiveRecord::Migration[5.1]
  def change
    remove_column(:comments, :subject_id)
  end
end

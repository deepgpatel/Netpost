class ChangeVoteRankString < ActiveRecord::Migration[5.1]
  def change
    change_column :votes, :rank, :string
  end
end

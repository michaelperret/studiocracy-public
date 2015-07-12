class ChangeVotesToPostVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :up
    add_column :votes, :state, :integer, :after => :post_id
  end
end

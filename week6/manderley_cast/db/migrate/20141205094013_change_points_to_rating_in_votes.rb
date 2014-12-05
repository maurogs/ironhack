class ChangePointsToRatingInVotes < ActiveRecord::Migration
  def change
  	rename_column :votes, :amount, :rating
  end
end

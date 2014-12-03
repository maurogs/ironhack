class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :movie, index: true
      t.references :user, index: true
      t.integer :amount

      t.timestamps
    end
    add_index :votes, :amount
    add_index :votes, [:movie_id, :user_id], unique: true
  end
end

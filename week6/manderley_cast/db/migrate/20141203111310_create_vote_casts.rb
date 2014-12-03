class CreateVoteCasts < ActiveRecord::Migration
  def change
    create_table :vote_casts do |t|
      t.references :person, index: true
      t.references :user, index: true
      t.integer :amount

      t.timestamps
    end
    add_index :vote_casts, :amount
    add_index :vote_casts, [:person_id, :user_id] , unique: true
  end
end

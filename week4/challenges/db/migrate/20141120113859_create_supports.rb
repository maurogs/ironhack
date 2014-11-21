class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
    	t.integer :challenge_id
    	t.string :mail
      t.timestamps
    end
  end
end

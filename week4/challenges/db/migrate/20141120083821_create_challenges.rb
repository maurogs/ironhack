class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
    	t.string :name
    	t.text :content
      t.timestamps
    end
  end
end

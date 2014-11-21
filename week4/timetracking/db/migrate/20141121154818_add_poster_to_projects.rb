class AddPosterToProjects < ActiveRecord::Migration
  def change
    add_column :entries, :poster, :string
  end
end

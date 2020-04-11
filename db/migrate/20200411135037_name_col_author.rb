class NameColAuthor < ActiveRecord::Migration[5.2]
  def change
    rename_column :interventions, :author, :author_id
  end
end

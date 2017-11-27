class RenamePersonInComments < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :person, :person_id
  end
end

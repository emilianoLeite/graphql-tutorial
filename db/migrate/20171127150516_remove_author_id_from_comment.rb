class RemoveAuthorIdFromComment < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :author
  end
end

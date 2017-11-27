class RemoveAuthorIdFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :author_id
  end
end

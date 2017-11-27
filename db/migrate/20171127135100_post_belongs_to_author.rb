class PostBelongsToAuthor < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      t.references :author, foreign_key: true
    end
  end
end

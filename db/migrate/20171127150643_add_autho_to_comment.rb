class AddAuthoToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :person, :integer, foreign_key: true
  end
end

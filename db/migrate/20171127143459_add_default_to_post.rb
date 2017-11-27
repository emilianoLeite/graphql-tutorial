class AddDefaultToPost < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :rating, :integer, default: 5
  end
end

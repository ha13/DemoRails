class AddDetailToPost < ActiveRecord::Migration
  def up
    add_column :posts, :slug, :string, index: true
  end
  def down
    remove_column :posts, :slug, :string
  end
end

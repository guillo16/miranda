class AddCheckedToBookmarks < ActiveRecord::Migration[5.2]
  def change
    add_column :bookmarks, :checked, :boolean, :default => false
  end
end

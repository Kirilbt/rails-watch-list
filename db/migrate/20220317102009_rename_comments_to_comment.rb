class RenameCommentsToComment < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookmarks, :comments, :comment
  end
end

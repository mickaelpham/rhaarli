class RenamePrivateColumn < ActiveRecord::Migration
  def change
    rename_column :links, :private, :is_private
  end
end

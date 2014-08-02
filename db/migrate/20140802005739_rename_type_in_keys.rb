class RenameTypeInKeys < ActiveRecord::Migration
  def change
    rename_column :user_keys, :type, :cipher_type
  end
end

class AddIdToKeys < ActiveRecord::Migration
  def change
    add_column :user_keys, :user_id, :integer
  end
end

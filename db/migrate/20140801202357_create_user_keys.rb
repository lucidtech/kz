class CreateUserKeys < ActiveRecord::Migration
  def change
    create_table :user_keys do |t|
      t.string :cipher_key
      t.string :cipher_iv
      t.string :identifier
      t.string :type

      t.timestamps
    end
  end
end

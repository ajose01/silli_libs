class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :platform
      t.string :platform_id

      t.timestamps
    end
    add_index :users, :platform_id
    add_index :users, :platform
  end
end

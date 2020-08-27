class CreateUserFossils < ActiveRecord::Migration[6.0]
  def change
    create_table :user_fossils do |t|
      t.integer :user_id
      t.integer :fossil_id

      t.timestamps
    end
  end
end

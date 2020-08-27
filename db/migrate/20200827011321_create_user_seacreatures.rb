class CreateUserSeacreatures < ActiveRecord::Migration[6.0]
  def change
    create_table :user_seacreatures do |t|
      t.integer :user_id
      t.integer :sea_creature_id

      t.timestamps
    end
  end
end

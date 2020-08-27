class CreateVillagers < ActiveRecord::Migration[6.0]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :personality
      t.string :birthday
      t.string :species
      t.string :catch_phrase
      t.string :icon_uri
      t.string :image_uri
      t.string :saying

      t.timestamps
    end
  end
end

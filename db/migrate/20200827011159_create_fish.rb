class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :availability
      t.integer :price
      t.integer :cj
      t.string :image_uri
      t.string :icon_uri

      t.timestamps
    end
  end
end

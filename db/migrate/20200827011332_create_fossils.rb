class CreateFossils < ActiveRecord::Migration[6.0]
  def change
    create_table :fossils do |t|
      t.string :kind
      t.string :name
      t.integer :price
      t.string :museum_phrase
      t.string :image_uri

      t.timestamps
    end
  end
end

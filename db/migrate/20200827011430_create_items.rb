class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :kind
      t.boolean :isdiy
      t.boolean :customizable
      t.string :name
      t.boolean :isinteractive
      t.boolean :iscatalog
      t.string :tag
      t.integer :price
      t.integer :sell
      t.string :image_uri

      t.timestamps
    end
  end
end

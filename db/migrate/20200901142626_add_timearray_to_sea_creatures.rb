class AddTimearrayToSeaCreatures < ActiveRecord::Migration[6.0]
  def change
    add_column :sea_creatures, :timearray, :text, array: true, default: []
  end
end

class AddTimearrayToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fish, :timearray, :text, array: true, default: []
  end
end

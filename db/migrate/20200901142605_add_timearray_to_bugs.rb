class AddTimearrayToBugs < ActiveRecord::Migration[6.0]
  def change
    add_column :bugs, :timearray, :text, array: true, default: []
  end
end

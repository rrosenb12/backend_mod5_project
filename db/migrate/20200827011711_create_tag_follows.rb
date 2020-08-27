class CreateTagFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_follows do |t|
      t.integer :user_id
      t.integer :tag_id

      t.timestamps
    end
  end
end

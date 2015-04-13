class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.text :description
      t.text :song
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

class CreateTracks < ActiveRecord::Migration[8.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :album
      t.string :artist
      t.integer :duration
      t.float :size

      t.timestamps
    end
  end
end

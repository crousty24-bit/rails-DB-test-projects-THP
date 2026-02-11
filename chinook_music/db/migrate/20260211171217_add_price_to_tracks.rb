class AddPriceToTracks < ActiveRecord::Migration[8.0]
  def change
    add_column :tracks, :price, :float
  end
end

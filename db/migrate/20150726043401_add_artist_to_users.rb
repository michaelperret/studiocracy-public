class AddArtistToUsers < ActiveRecord::Migration
  def change
    add_column :users, :artist, :string
  end
end

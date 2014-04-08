class CreateAlbumFollows < ActiveRecord::Migration
  def change
    create_table :album_follows do |t|
      t.integer :AlbumID
      t.integer :FollowerID

      t.timestamps
    end
  end
end

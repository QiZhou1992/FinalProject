class CreatePublicAlbumImages < ActiveRecord::Migration
  def change
    create_table :public_album_images do |t|
      t.integer :ImageID
      t.integer :AlbumID

      t.timestamps
    end
  end
end

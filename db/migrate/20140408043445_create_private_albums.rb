class CreatePrivateAlbums < ActiveRecord::Migration
  def change
    create_table :private_albums do |t|
      t.string :Name
      t.integer :UserID

      t.timestamps
    end
  end
end

class CreatePublicAlbums < ActiveRecord::Migration
  def change
    create_table :public_albums do |t|
      t.string :Name
      t.integer :FollowCount

      t.timestamps
    end
  end
end

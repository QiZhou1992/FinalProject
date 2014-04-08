class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :Path
      t.integer :Author
      t.string :Status
      t.integer :LikedCount

      t.timestamps
    end
  end
end

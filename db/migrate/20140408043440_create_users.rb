class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Email
      t.string :Password
      t.string :Name
      t.integer :FollowCount

      t.timestamps
    end
  end
end

class CreateUserFollows < ActiveRecord::Migration
  def change
    create_table :user_follows do |t|
      t.integer :UserID
      t.integer :FollowerID

      t.timestamps
    end
  end
end

class CreateFriendships < ActiveRecord::Migration
  def self.up
    create_table :friendships do |t|
      t.integer :user_id, :null => false
      t.integer :friend_id, :null => false, :options =>
        "CONSTRAINT fk_users REFERENCES users(id)"
      t.timestamps
    end
  end

  def self.down
    drop_table :friendships
  end
end

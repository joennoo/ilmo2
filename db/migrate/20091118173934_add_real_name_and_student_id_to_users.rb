class AddRealNameAndStudentIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :realname, :string
    add_column :users, :studentid, :bigint
  end

  def self.down
    remove_column :users, :realname
    remove_column :users, :studentid
  end
end

class AddRealNameAndStudentIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :realname, :string
    add_column :users, :studentid, :bigint
  end

  def self.down
  end
end

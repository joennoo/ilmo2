class ModifyRoles < ActiveRecord::Migration
  def self.up
     rename_column(:roles, :type, :role_type)
  end

  def self.down
    rename_column(:roles, :role_type, :type)
  end
end

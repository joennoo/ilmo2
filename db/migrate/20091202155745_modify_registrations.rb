class ModifyRegistrations < ActiveRecord::Migration
  def self.up
    rename_column(:registrations, :exergise_group_id, :exercise_group_id)
  end

  def self.down
  end
end

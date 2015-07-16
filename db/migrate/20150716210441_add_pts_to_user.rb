class AddPtsToUser < ActiveRecord::Migration
  def change
    add_column :users, :points, :integer, :default => 0
    add_column :days, :points, :integer, :default => 0

  end
end

class AddUserIdToFeats < ActiveRecord::Migration
  def change
    add_column :feats, :creator_id, :integer
    add_column :obstacles, :creator_id, :integer

  end
end

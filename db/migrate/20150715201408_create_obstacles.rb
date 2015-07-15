class CreateObstacles < ActiveRecord::Migration
  def change
    create_table :obstacles do |t|
      t.string :name
      t.string :description
      t.integer :misery_pts

      t.timestamps
    end
  end
end

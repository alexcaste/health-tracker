class Actions < ActiveRecord::Migration
  create_table(:actions) do |t|
    t.string :name
    t.string :description
    t.integer :bliss_pts

    t.timestamps
  end
end

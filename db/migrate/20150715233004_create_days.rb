class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.belongs_to :feat, index: true
      t.belongs_to :obstacle, index: true
      t.belongs_to :user, index: true

      t.date :date

    end
  end
end

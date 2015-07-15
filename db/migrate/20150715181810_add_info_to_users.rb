class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :weight, :integer
    add_column :users, :gender, :integer, :default => 0

  end
end

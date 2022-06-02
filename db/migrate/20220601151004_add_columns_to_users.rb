class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :employer, :boolean, default: false
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :location, :string
    add_column :users, :description, :text
    add_column :users, :avg_rating, :integer, default: 0
  end
end

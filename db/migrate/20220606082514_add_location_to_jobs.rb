class AddLocationToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :location, :string
  end
end

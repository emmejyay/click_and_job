class ChangeDatetoDatetimeInJobs < ActiveRecord::Migration[6.1]
  def change
    change_column :jobs, :start_date, :datetime
    change_column :jobs, :end_date, :datetime
  end
end

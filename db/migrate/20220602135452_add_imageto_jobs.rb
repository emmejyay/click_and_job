class AddImagetoJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :img_url, :string
  end
end

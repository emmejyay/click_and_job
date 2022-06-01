class RemoveStatusFromRequests < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :status, :string
  end
end

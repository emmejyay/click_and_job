class AddStatusToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :status, :string, default: "pending"
  end
end

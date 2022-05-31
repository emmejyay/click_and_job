class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.text :job_description
      t.date :start_date
      t.date :end_date
      t.integer :remuneration
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

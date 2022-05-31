class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :job, null: false, foreign_key: true
      t.text :content
      t.integer :writer_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end

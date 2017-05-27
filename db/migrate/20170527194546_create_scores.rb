class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :scoreable_id
      t.string  :scoreable_type
      t.timestamps
    end
  end
end

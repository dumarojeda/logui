class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :img_url
      t.integer :price
      t.references :guide, foreign_key: true

      t.timestamps
    end
  end
end

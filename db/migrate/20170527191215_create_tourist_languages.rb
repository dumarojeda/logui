class CreateTouristLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :tourist_languages do |t|
      t.references :tourist, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end

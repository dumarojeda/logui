class CreateGuideLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :guide_languages do |t|
      t.references :guide, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end

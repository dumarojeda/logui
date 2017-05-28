class AddIncludeToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :include, :text
  end
end

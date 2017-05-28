class AddDescriptionToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :description, :string
  end
end

class AddCityToGuide < ActiveRecord::Migration[5.0]
  def change
    add_column :guides, :city_id, :integer
  end
end

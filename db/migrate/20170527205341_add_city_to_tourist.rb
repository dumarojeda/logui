class AddCityToTourist < ActiveRecord::Migration[5.0]
  def change
    add_column :tourists, :city_id, :integer
  end
end

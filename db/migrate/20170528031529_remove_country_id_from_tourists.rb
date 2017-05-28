class RemoveCountryIdFromTourists < ActiveRecord::Migration[5.0]
  def change
    remove_column :tourists, :country_id
  end
end

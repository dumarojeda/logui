class RemoveCityFromActivities < ActiveRecord::Migration[5.0]
  def change
    remove_column :activities, :city
  end
end

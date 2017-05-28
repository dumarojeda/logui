class AddObservationsToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :observations, :text
  end
end

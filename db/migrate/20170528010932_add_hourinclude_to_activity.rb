class AddHourincludeToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :hour, :integer
  end
end

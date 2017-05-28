class AddLanguageToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :language_id, :integer
  end
end

class AddFeatureToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :feature, :boolean
  end
end

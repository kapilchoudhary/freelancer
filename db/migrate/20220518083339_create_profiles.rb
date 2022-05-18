class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.integer :user_type
      t.integer :experience
      t.text :description
      t.float :hourly_rate
      t.string :skills

      t.timestamps
    end
  end
end

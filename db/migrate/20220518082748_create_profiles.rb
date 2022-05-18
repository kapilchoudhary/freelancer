class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :string
      t.string :user_type
      t.string :integer
      t.string :experience
      t.string :integer
      t.string :description
      t.string :text
      t.string :hourly_rate
      t.string :float
      t.string :skills
      t.string :string

      t.timestamps
    end
  end
end

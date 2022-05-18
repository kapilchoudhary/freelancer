class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :type
      t.integer :exprience
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

class CreateTravelDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :travel_drivers do |t|
      t.references :travel, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end

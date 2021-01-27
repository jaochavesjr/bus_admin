class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :plate
      t.string :model
      t.integer :number_seats
      t.boolean :active, default: true

      t.timestamps
    end
  end
end

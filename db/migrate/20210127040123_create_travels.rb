class CreateTravels < ActiveRecord::Migration[6.1]
  def change
    create_table :travels do |t|
      t.references :origin, null: false, foreign_key: { to_table: :cities }
      t.references :destination, null: false, foreign_key: { to_table: :cities }
      t.references :car, null: false, foreign_key: true
      t.datetime :date
      t.boolean :done, default: false

      t.timestamps
    end
  end
end

class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :complement
      t.string :neighborhood
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end

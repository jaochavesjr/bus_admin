class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name_full
      t.string :nickname
      t.string :cpf
      t.string :cellphone
      t.boolean :active, default: true

      t.timestamps
    end
  end
end

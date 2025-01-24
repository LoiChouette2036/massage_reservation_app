class CreateMassages < ActiveRecord::Migration[8.0]
  def change
    create_table :massages do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.decimal :price

      t.timestamps
    end
  end
end

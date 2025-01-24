class CreateReservations < ActiveRecord::Migration[8.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :massage, null: false, foreign_key: true
      t.datetime :start_time, null: false
      t.string :status, default: "pending", null: false

      t.timestamps
    end
  end
end

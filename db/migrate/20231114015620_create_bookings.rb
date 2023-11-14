class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :final_price

      t.timestamps
    end
  end
end

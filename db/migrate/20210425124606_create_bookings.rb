class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.time :time
      t.string :name
      t.string :email
      t.integer :mobile

      t.timestamps
    end
  end
end

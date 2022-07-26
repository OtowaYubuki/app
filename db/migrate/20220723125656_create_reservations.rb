class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :startday
      t.date :endday
      t.integer :people

      t.timestamps
    end
  end
end

class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides do |t|
      t.string :ride_name
      t.integer :ride_length
      t.date :ride_date

      t.timestamps
    end
  end
end

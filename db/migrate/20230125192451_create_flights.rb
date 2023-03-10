class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :departing_airport_id
      t.integer :arrival_airport_id
      t.integer :duration
      t.datetime :scheduled_for

      t.timestamps
    end
  end
end

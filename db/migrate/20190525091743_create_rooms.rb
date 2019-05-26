class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :description
      t.boolean :has_daily_price
      t.integer :daily_price
      t.boolean :has_hourly_price
      t.integer :hourly_price
      t.integer :capacity
      t.integer :reputation_score

      t.timestamps
    end
  end
end

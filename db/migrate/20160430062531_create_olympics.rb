class CreateOlympics < ActiveRecord::Migration
  def change
    create_table :olympics do |t|
      t.string :athlete_name
      t.string :event
      t.string :country
      t.string :medal_type
      t.date :event_date

      t.timestamps
    end
  end
end

class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.text :time_zone
      t.string :week_day
      t.time :available_time

      t.timestamps
    end
  end
end

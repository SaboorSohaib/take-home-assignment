class CreateCoaches < ActiveRecord::Migration[7.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :time_zone
      t.string :week_day
      t.time :available_at
      t.time :available_until

      t.timestamps
    end
  end
end

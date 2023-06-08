class AddDefaultToTimezone < ActiveRecord::Migration[7.0]
  def change
    change_column_default :coaches, :time_zone, "UTC"
  end
end

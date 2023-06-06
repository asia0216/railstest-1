class ChangeDataOneDayToScheduleapps < ActiveRecord::Migration[6.1]
  def change
    change_column :scheduleapps, :one_day, :varchar
  end
end

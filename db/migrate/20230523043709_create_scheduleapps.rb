class CreateScheduleapps < ActiveRecord::Migration[6.1]
  def change
    create_table :scheduleapps do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.boolean :one_day
      t.text :memo

      t.timestamps
    end
  end
end

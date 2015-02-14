class CreateWhitelistedIntervals < ActiveRecord::Migration
  def change
    create_table :whitelisted_intervals do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.timestamps null: false
    end
  end
end

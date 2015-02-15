class CreateWhitelistedIntervals < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.datetime :beginning, null: false
      t.datetime :ending, null: false
      t.timestamps null: false
    end
  end
end

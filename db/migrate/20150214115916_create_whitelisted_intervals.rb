class CreateWhitelistedIntervals < ActiveRecord::Migration
  def change
    create_table :whitelisted_intervals do |t|

      t.timestamps null: false
    end
  end
end

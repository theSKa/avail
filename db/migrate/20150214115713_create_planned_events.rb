class CreatePlannedEvents < ActiveRecord::Migration
  def change
    create_table :planned_events do |t|

      t.timestamps null: false
    end
  end
end

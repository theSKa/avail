class CreatePlannedEvents < ActiveRecord::Migration
  def change
    create_table :planned_events do |t|
      t.string :name, null: false
      t.text :description, null: true
      t.timestamps null: false
    end
  end
end

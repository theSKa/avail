class CreatePlannedEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.text :description, null: true
      t.datetime :beginning, null: false
      t.datetime :ending, null: false
      t.timestamps null: false
    end
  end
end

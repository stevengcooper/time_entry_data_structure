require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3'
)

class TimeEntriesMigration < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.referemces :task_id
      t.references :developer_id
      t.date :worked_on
      t.decimal :hours_worked, precision: 0, scale: 2
      t.timestamps null: false
    end
  end
end

TimeEntriesMigration.migrate(:up)

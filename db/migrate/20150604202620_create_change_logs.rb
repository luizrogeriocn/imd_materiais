class CreateChangeLogs < ActiveRecord::Migration
  def change
    create_table :change_logs do |t|
      t.references :task, index: true
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :change_logs, :tasks
  end
end

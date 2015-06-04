class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.references :user, index: true
      t.references :task, index: true

      t.timestamps null: false
    end
    add_foreign_key :chores, :users
    add_foreign_key :chores, :tasks
  end
end

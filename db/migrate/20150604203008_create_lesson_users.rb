class CreateLessonUsers < ActiveRecord::Migration
  def change
    create_table :lesson_users do |t|
      t.references :lesson, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :lesson_users, :lessons
    add_foreign_key :lesson_users, :users
  end
end

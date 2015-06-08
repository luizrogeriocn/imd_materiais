class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :lesson_number
      t.references :subject, index: true
      t.references :offer, index: true
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :lessons, :subjects
    add_foreign_key :lessons, :offers
  end
end

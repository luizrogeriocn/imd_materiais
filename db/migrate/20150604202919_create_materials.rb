class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.references :lesson, index: true
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :materials, :lessons
  end
end

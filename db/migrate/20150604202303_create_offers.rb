class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :year
      t.integer :semester

      t.timestamps null: false
    end
  end
end

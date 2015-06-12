class FixColumnNameOnComment < ActiveRecord::Migration
  def change
      rename_column :comments, :name, :content
    end
end

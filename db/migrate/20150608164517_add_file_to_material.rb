class AddFileToMaterial < ActiveRecord::Migration
  def change
    add_column :materials, :file, :string
  end
end

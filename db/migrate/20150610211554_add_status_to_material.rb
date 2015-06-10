class AddStatusToMaterial < ActiveRecord::Migration
  def change
    add_column :materials, :status, :integer, default: 0
  end
end

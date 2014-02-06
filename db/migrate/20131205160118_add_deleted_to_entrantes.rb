class AddDeletedToEntrantes < ActiveRecord::Migration
  def change
  	add_column :entrantes, :deleted, :boolean, :null => false, :default => false
  	add_column :entrantes, :deleted_at, :datetime
  end
end

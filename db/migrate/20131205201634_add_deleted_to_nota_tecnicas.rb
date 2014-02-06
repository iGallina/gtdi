class AddDeletedToNotaTecnicas < ActiveRecord::Migration
  def change
  	add_column :nota_tecnicas, :deleted, :boolean, :null => false, :default => false
  	add_column :nota_tecnicas, :deleted_at, :datetime
  end
end


class AddDeletedToNomeDocumento < ActiveRecord::Migration
  def change
  	add_column :nome_documentos, :deleted, :boolean, :null => false, :default => false
  	add_column :nome_documentos, :deleted_at, :datetime
  end
end
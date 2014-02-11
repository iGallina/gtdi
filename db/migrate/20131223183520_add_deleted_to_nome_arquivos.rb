class AddDeletedToNomeArquivos < ActiveRecord::Migration
  def change
  	add_column :nome_arquivos, :deleted, :boolean, :null => false, :default => false
  	add_column :nome_arquivos, :deleted_at, :datetime
  end
end
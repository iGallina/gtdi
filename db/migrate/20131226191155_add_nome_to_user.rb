class AddNomeToUser < ActiveRecord::Migration
  def change
    add_column :users, :nome, :string
    add_index :users, :nome, unique: true
  end
end

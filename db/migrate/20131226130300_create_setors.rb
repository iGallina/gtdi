class CreateSetors < ActiveRecord::Migration
  def change
    create_table :setors do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end

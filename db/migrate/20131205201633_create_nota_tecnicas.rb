class CreateNotaTecnicas < ActiveRecord::Migration
  def change
    create_table :nota_tecnicas do |t|
      t.string :data_nota
      t.string :numero_nota
      t.string :numero_processo
      t.string :status
      t.string :nome_do_analista
      t.string :area

      t.timestamps
    end
  end
end

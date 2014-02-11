ActiveAdmin.register NotaTecnica do
  permit_params :arquivo, :data_nota, :numero_nota, :numero_processo, :status, :nome_do_analista, :area


  sidebar :ajuda do
    ul do
      li "Texto explicativo"
    end
  end

  index do
    selectable_column
    id_column
    column :arquivo
    column :data_nota
    column :numero_nota
    column :numero_processo
    column :status
    column :nome_do_analista
    column :area
    column :created_at
    actions
  end

  filter :arquivo
  filter :data_nota
  filter :numero_nota
  filter :numero_processo
  filter :status
  filter :nome_do_analista
  filter :area
  filter :created_at

  form do |f|
    f.inputs "Entrante Detalhes" do
      f.input :arquivo
      f.input :data_nota
      f.input :numero_nota
      f.input :numero_processo
      f.input :status
      f.input :nome_do_analista
      f.input :area
      f.input :dt_procedimento
    end
    f.actions
  end
end
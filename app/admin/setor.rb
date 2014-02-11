ActiveAdmin.register Setor do
  menu :label => "Setores", :parent => "Configurações"
  permit_params :nome

  index do
    selectable_column
    id_column
    column :nome
    column :descricao
    column :created_at
    actions
  end

  filter :nome
  filter :created_at

  form do |f|
    f.inputs "Setor Detalhes" do
      f.input :nome
      f.input :descricao
    end
    f.actions
  end

end
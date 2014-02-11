ActiveAdmin.register Cargo do
menu :label => "Cargos", :parent => "Configurações"
  permit_params :nome

  index do
    selectable_column
    id_column
    column :nome
    column :created_at
    actions
  end

  filter :nome
  filter :created_at

  form do |f|
    f.inputs "Cargo Detalhes" do
      f.input :nome
    end
    f.actions
  end

end
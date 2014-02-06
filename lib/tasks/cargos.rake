namespace :db do
  desc "Erase and fill cargo table"
  task :populate_cargo => :environment do
    [Setor].each(&:delete_all)
    Cargo.create(id: 1, nome: "Servidor")
    Cargo.create(id: 2, nome: "Terceirizado")
    Cargo.create(id: 3, nome: "Estagiário")
  end
end

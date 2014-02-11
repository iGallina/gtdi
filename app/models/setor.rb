class Setor < ActiveRecord::Base
  has_many :users, inverse_of: :setor, dependent: :destroy

  def to_s
    self.nome
  end
end

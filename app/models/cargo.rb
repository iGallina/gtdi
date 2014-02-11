class Cargo < ActiveRecord::Base
  has_many :users, inverse_of: :cargo, dependent: :destroy

  def to_s
    self.nome
  end
end

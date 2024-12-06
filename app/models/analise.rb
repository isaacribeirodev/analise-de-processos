class Analise < ApplicationRecord
  belongs_to :funcionario

  validates :processo, :status_analise, :funcionario_id, presence: true
end

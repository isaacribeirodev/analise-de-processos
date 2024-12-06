class Analise < ApplicationRecord
  belongs_to :funcionario

  validates :processo, :status_analise, :funcionario, presence: true
end

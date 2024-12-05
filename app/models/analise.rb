class Analise < ApplicationRecord
  belongs_to :funcionario

  validates :status_analise, presence: true
end

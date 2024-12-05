class Funcionario < ApplicationRecord
    has_many :analises
    
    validates :nome, :cargo, :senha, presence: true
    validates :cpf, presence: true, uniqueness: true
end

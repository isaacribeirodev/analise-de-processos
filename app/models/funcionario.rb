class Funcionario < ApplicationRecord
    has_many :analises

    validates :nome, :cargo, :senha, presence: true
    validates :cpf, presence: true, uniqueness: true

    before_destroy :verificar_analises

    private

    def verificar_analises
        if analises.any?
            errors.add(:base, "Funcionário com análises associadas não pode ser excluído.")
            throw :abort
        end
    end
end

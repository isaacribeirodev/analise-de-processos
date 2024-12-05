json.extract! funcionario, :id, :nome, :cpf, :cargo, :senha, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)

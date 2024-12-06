class CreateFuncionarios < ActiveRecord::Migration[8.0]
  def change
    create_table :funcionarios, options: "AUTO_INCREMENT = 1" do |t|
      t.string :nome, null: false
      t.string :cpf, null: false
      t.string :cargo, null: false
      t.string :senha, null: false

      t.timestamps
    end

    add_index :funcionarios, :cpf, unique: true
  end
end

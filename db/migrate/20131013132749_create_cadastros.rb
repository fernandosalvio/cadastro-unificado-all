class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :sexo
      t.string :estado_civil
      t.date :data_nascimento
      t.string :nome_rua
      t.string :numero
      t.string :cep
      t.string :cidade
      t.string :bairro
      t.string :pais
      t.string :telefone
      t.string :celular

      t.timestamps
    end
  end
end

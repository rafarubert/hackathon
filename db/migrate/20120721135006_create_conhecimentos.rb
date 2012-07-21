class CreateConhecimentos < ActiveRecord::Migration
  def change
    create_table :conhecimentos do |t|
      t.string :pergunta
      t.text :resposta

      t.timestamps
    end
  end
end

class CreateHardwares < ActiveRecord::Migration[5.1]
  def change
    create_table :hardwares do |t|
      t.string :nome
      t.integer :valor
      t.text :descricao

      t.timestamps
    end
  end
end

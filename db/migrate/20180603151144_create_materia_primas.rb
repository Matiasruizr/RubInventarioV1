class CreateMateriaPrimas < ActiveRecord::Migration[5.2]
  def change
    create_table :materia_primas do |t|
      t.string :id_mp
      t.string :color
      t.integer :cantidad

      t.timestamps
    end
  end
end

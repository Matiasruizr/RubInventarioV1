class CreatePinturas < ActiveRecord::Migration[5.2]
  def change
    create_table :pinturas do |t|
      t.string :id_pintura
      t.string :color
      t.string :materia_1
      t.string :materia2
      t.string :materia3

      t.timestamps
    end
  end
end

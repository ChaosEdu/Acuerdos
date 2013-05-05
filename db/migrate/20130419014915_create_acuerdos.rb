class CreateAcuerdos < ActiveRecord::Migration
  def change
    create_table :acuerdos do |t|
      t.string :titulo
      t.text :detalles
      t.decimal :avance_acuerdo
      t.integer :lista_acuerdo_id

      t.timestamps
    end
  end
end

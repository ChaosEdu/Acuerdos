class CreateListaAcuerdos < ActiveRecord::Migration
  def change
    create_table :lista_acuerdos do |t|
      t.decimal :avance
      t.references :sesion
      t.string :act

      t.timestamps
    end
    add_index :lista_acuerdos, :sesion_id 
  end
end

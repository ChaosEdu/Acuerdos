class CreateSecretaria < ActiveRecord::Migration
  def change
    create_table :secretaria do |t|
      t.string :nom_secretaria

      t.timestamps
    end
  end
end

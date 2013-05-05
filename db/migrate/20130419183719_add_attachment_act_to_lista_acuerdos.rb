class AddAttachmentActToListaAcuerdos < ActiveRecord::Migration
  def self.up
    change_table :lista_acuerdos do |t|
      t.attachment :act
    end
  end

  def self.down
    drop_attached_file :lista_acuerdos, :act
  end
end

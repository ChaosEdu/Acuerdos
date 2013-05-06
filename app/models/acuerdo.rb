class Acuerdo < ActiveRecord::Base
  resourcify
  attr_accessible :detalles, :titulo, :avance_acuerdo, :lista_acuerdo_id, :allow_destroy => true	
  belongs_to :lista_acuerdo
  
  has_many :comments, :as => :commentable
  
  delegate :update_avance, to: :lista_acuerdo
  after_save :update_avance
end
 
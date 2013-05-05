class Acuerdo < ActiveRecord::Base
  resourcify
  attr_accessible :detalles, :titulo, :avance_acuerdo, :lista_acuerdo_id
  belongs_to :lista_acuerdo
  
  has_many :comments, :as => :commentable
end
 
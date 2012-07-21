class Conhecimento < ActiveRecord::Base
  attr_accessible :pergunta, :resposta
  
  validates_presence_of :pergunta, :resposta
  
end

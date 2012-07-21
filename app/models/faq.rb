class Faq < ActiveRecord::Base
  attr_accessible :pergunta, :resposta

  validates_presence_of :pergunta, :resposta

  searchable do
      text :pergunta, :resposta
  end
  
  def self.busca_indexada chave_busca
    Faq.search do
      fulltext chave_busca
    end
  end
end
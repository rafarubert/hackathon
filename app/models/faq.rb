class Faq < ActiveRecord::Base
  attr_accessible :pergunta, :resposta

  validates_presence_of :pergunta, :resposta

  searchable do
      text :pergunta, :resposta
  end
  
  def self.busca_indexada chave_busca
    search = Faq.search { fulltext chave_busca }
    search.results
  end
end
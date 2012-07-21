class Faq < ActiveRecord::Base
  attr_accessible :pergunta, :resposta

  validates_presence_of :pergunta, :resposta

  searchable do
      text :pergunta, :stored => true
      text :resposta, :stored => true
  end

  def self.busca_indexada chave_busca
    Faq.search do
      fulltext chave_busca, :highlight => true
    end
  end
end
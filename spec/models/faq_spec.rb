#encoding: utf-8
require 'spec_helper'

describe Faq do
  it { should validate_presence_of :pergunta }
  it { should validate_presence_of :resposta }
  
  context "Busca" do
    before do
      FactoryGirl.create(:faq1)
    end
    
    it "Busca 100 da pergunta" do
      Faq.reindex
      search = Faq.busca_indexada("O que é um nome de domínio?")
      puts '############'
      puts Faq.count
      puts search.class
      puts search.inspect
      puts '############'
      search.first.resposta.should eq 'É um nome que serve para localizar e identificar conjuntos de computadores na Internet. O nome de domínio foi concebido com o objetivo de facilitar a memorização dos endereços de computadores na Internet. Sem ele, teríamos que memorizar uma sequência grande de números.'
    end
  end
end
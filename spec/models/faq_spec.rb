#encoding: utf-8
require 'spec_helper'

describe Faq do
  it { should validate_presence_of :pergunta }
  it { should validate_presence_of :resposta }

  context "Busca" do
    before do
      FactoryGirl.create(:faq1)
    end

    xit "Busca 100 da pergunta" do
      search = Faq.busca_indexada("O que é um nome de domínio?")
      search.results.first.should == 'É um nome que serve para localizar e identificar conjuntos de computadores na Internet. O nome de domínio foi concebido com o objetivo de facilitar a memorização dos endereços de computadores na Internet. Sem ele, teríamos que memorizar uma sequência grande de números.'
    end
  end
end
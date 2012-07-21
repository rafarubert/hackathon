# encoding: UTF-8
FactoryGirl.define do
  factory :faq1, :class => Faq do
    pergunta "O que é um nome de domínio?"
    resposta "É um nome que serve para localizar e identificar conjuntos de computadores na Internet. O nome de domínio foi concebido com o objetivo de facilitar a memorização dos endereços de computadores na Internet. Sem ele, teríamos que memorizar uma sequência grande de números."
  end

  factory :faq2, :class => Faq do
    pergunta "Quem pode registrar um domínio?"
    resposta "Qualquer entidade legalmente estabelecida no Brasil como pessoa jurídica (instituições) ou física (Profissionais Liberais e pessoas físicas) que possua um contato em território nacional."
  end

  factory :faq3, :class => Faq do
    pergunta "Por que preciso registrar meu domínio no Registro .br?"
    resposta "Domínios que não estão registrados, não podem ser encontrados na Internet."
  end
end
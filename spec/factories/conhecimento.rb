# encoding: UTF-8
FactoryGirl.define do
  factory :conhecimento do
  	sequence(:pergunta){ |n| "pergunta_#{n}" }
    resposta "criando pergunta"
  end
end
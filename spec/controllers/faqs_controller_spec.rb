require 'spec_helper'

describe FaqsController do

  before { login }

  describe "#busca_indexada" do
    it "deve fazer a busca indexada" do
      Faq.should_receive(:busca_indexada).with('chave busca').once()
      get :index, :chave_busca => 'chave busca'
    end
  end
end
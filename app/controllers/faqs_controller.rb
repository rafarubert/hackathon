class FaqsController < ApplicationController
  def index
    Faq.busca_indexada(params[:chave_busca])
  end
end
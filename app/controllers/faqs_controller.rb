class FaqsController < ApplicationController
  def index
    @faqs = Faq.busca_indexada(params[:chave_busca])
  end
end
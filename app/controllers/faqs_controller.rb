class FaqsController < ApplicationController
  def index

    @faqs = Faq.search do
      fulltext params[:chave_busca]
    end

  end

end
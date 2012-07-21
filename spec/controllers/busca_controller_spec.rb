require 'spec_helper'

describe BuscaController do
  before { login }

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "POST 'resultado'" do
    it "returns http success" do
      post 'resultado'
      response.should be_success
    end
  end

end
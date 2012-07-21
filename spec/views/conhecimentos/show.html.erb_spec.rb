require 'spec_helper'

describe "conhecimentos/show" do
  before(:each) do
    @conhecimento = assign(:conhecimento, stub_model(Conhecimento,
      :pergunta => "Pergunta",
      :resposta => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pergunta/)
    rendered.should match(/MyText/)
  end
end

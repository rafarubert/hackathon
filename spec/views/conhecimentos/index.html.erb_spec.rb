require 'spec_helper'

describe "conhecimentos/index" do
  before(:each) do
    assign(:conhecimentos, [
      stub_model(Conhecimento,
        :pergunta => "Pergunta",
        :resposta => "MyText"
      ),
      stub_model(Conhecimento,
        :pergunta => "Pergunta",
        :resposta => "MyText"
      )
    ])
  end

  it "renders a list of conhecimentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pergunta".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

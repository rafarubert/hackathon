require 'spec_helper'

describe "conhecimentos/new" do
  before(:each) do
    assign(:conhecimento, stub_model(Conhecimento,
      :pergunta => "MyString",
      :resposta => "MyText"
    ).as_new_record)
  end

  it "renders new conhecimento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conhecimentos_path, :method => "post" do
      assert_select "input#conhecimento_pergunta", :name => "conhecimento[pergunta]"
      assert_select "textarea#conhecimento_resposta", :name => "conhecimento[resposta]"
    end
  end
end

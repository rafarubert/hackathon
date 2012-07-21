require 'spec_helper'

describe Faq do
  it { should validate_presence_of :pergunta }
  it { should validate_presence_of :resposta }
end

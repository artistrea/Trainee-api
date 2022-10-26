require 'rails_helper'

RSpec.describe Brand, type: :model do
  context "Factory test" do
    it {expect(build(:brand)).to be_valid}
  end
  # Faltando testes de validação, como unicidade do nome. 
end

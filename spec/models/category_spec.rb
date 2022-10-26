require 'rails_helper'

RSpec.describe Category, type: :model do
  context "Factory test" do
    it {expect(build(:category)).to be_valid}
  end
  # Faltando testes de validação, como unicidade do nome.
end

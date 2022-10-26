require 'rails_helper'

RSpec.describe User, type: :model do
  context "Factory test" do
    it {expect(build(:user)).to be_valid}
  end
  # Testes de validação todos construídos incorretamente.
  context "Validate admin"  do
    it "isAdmin is nil" do
      seadm =User.new(is_admin: true)
      expect(seadm).to_not be_valid  # Não deveria passar, mas passa.
    end  
  end
end

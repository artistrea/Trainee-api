require 'rails_helper'

RSpec.describe User, type: :model do
  context "Factory test" do
    it {expect(build(:user)).to be_valid}
  end
  context "Validate admin"  do
    it "isAdmin is nil" do
      seadm =User.new(is_admin: nil)
      expect(seadm).to_not be_valid
    end  
  end
end

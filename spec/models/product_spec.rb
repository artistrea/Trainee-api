require 'rails_helper'

RSpec.describe Product, type: :model do
  context "Factory test" do
    it {expect(build(:product)).to be_valid}
  end
  context "Validating price"  do
    it "is invalid if nil" do
      expect(build(:product, price: nil)).to_not be_valid
    end  
  end 
  context "Check stock"  do
    it "Stock is empty" do
      expect(build(:product, stock: nil)).to_not be_valid
    end  
  end
  context "Brand test"  do
    it "Invalid if Brand is nil" do
      expect(build(:product, brand_id: nil)).to_not be_valid  
    end
  end    
  context "Category test"  do
    it "Invalid if Brand is nil" do
      expect(build(:product, category_id: nil)).to_not be_valid  
    end
  end

end

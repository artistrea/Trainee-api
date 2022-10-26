require 'rails_helper'

RSpec.describe Product, type: :model do
  context "Factory test" do
    it {expect(build(:product)).to be_valid}
  end
  
  # Testes de validação todos construídos incorretamente.
  # Mesmo que coloque um valor válido para os campos, o teste continua passando.
  # Os testes estão passando até quando não deveriam. Isso significa que estão escritos incorretamente
  # Por favor, ou reveja o vídeo da aula trainee, ou use e abuse do repositório de exemplos.
  # https://github.com/StructCE/trainee-api-2022-2

  context "Validating price"  do
    it 'invalid price if nil' do
      preco = Product.new(price: 1)
      expect(preco).to_not be_valid
    end  
  end 
  context "Check stock"  do
    it "Stock is empty" do
      estoque =Product.new(stock: 1)
      expect(estoque).to_not be_valid
    end  
  end
  context "Brand test"  do
    it 'invalid product if has no brand' do
      brand = create(:brand)
      marca = Product.new(brand_id: brand.id)
      expect(marca).to_not be_valid
    end
  end    
  
  context "Category test"  do
    it 'invalid product if has no category' do
      category = create(:category)
      categ = Product.new(category_id: category.id)
      expect(categ).to_not be_valid
    end
  end
end

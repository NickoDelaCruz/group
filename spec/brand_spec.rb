require('spec_helper')

describe(Brand) do
  it { should have_and_belong_to_many(:stores) }

  describe '#capitalize_letter' do
    it("capitalizes the first letter for each word.") do
      brand = Brand.create({:name => 'north face', :price => 50})
      expect(brand.name).to(eq('North Face'))
    end
  end

  it("Checks if name field is filled") do
    brand = Brand.new({:name => ''})
    expect(brand.save).to(eq(false))
  end

  it("Checks if price field is filled") do
    brand = Brand.new({:price => ''})
    expect(brand.save).to(eq(false))
  end
  it("Checks if name is 100 Characters") do
  brand = Brand.new({:name => "a".*(9000)})
  expect(brand.save()).to(eq(false))
  end
end

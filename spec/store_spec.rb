require('spec_helper')

describe(Store) do
  it { should have_and_belong_to_many(:brands) }

  describe '#capitalize_letter' do
    it("capitalizes the first letter of each word in the name") do
      store = Store.create({:name => 'the north face'})
      expect(store.name).to(eq('The North Face'))
    end
  end

  it("Checks if name field is filled") do
    store = Store.new({:name => ''})
    expect(store.save).to(eq(false))
  end

  it("checks if name field for Store will not pass 100 chars") do
    store = Store.new({:name => "a".*(101)})
    expect(store.save()).to(eq(false))
  end

end

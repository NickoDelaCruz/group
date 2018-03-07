require('spec_helper')

describe 'path to make a store', {:type => :feature} do
  it 'takes the user to the stores page where they can create a store' do
    visit '/store_main'
    fill_in('name', :with => 'North Face')
    click_button('ADD')
    expect(page).to have_content('North Face')
  end
end

describe 'the store edit path', {:type => :feature} do
  it 'takes the user to the stores edit page where they can edit a store' do
    Store.create({:name => 'North Face'})
    visit '/store_main'
    click_link('EDIT')
    fill_in('name', :with => 'The North Face')
    click_button('Update')
    expect(page).to have_content('The North Face')
  end
end

describe 'the store delete path', {:type => :feature} do
  it 'takes the user to the stores edit page where they can edit a store' do
    Store.create({:name => 'The Shoe Store'})
    visit '/store_main'
    click_link('EDIT')
    click_button('Update')
    expect(page).to have_content('')
  end
end

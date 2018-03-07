require('spec_helper')

describe 'path to create a brand', {:type => :feature} do
  it 'takes the user to the brands page where they can create a brand' do
    visit '/brand_main'
    fill_in('name', :with => 'North Face')
    fill_in('price', :with => 50)
    click_button('ADD')
    expect(page).to have_content('North Face')
  end
end

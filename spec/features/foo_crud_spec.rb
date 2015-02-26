describe 'Foo CRUD', type: :feature , js: :true do
  before do
    visit '/foos'
      
    expect( page ).to have_content 'Foos'

    click_link 'Create New Foo'
    expect( page ).to have_content 'Create New Foo'

    within 'form' do
      fill_in 'name', with:'Matz'
      click_button 'Submit'
    end
  end

  specify do
    expect( page ).to have_content 'All Foos'
    expect( page ).to have_content 'Name: Matz'
  end
end
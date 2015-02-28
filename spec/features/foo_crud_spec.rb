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
    expect( current_path ).to eq '/foos'
    expect( page ).to have_content '1 Foos'
    expect( page ).to have_content 'Matz'
  end
end
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

  specify 'create' do
    expect( current_path ).to eq '/foos'
    expect( page ).to have_content '1 Foos'
    expect( page ).to have_content 'Matz'
  end

  specify 'edit' do
    click_link 'Edit'
    within 'form' do
      fill_in 'name', with:'New Name'
      click_button 'Submit'
    end
    
    expect( current_path ).to eq '/foos'
    expect( page ).to have_content '1 Foos'
    expect( page ).to have_content 'New Name'
  end

  specify 'read' do
    click_link 'Show'
    expect( current_path ).to match /foos\/.+?\/show/
    expect( page ).to have_content 'Matz'
  end

  specify 'delete' do
    click_link 'Show'
    click_button 'Delete'

    expect( current_path ).to eq '/foos'
    expect( page ).to have_content '0 Foos'
    expect( page ).to_not have_content 'Matz'
  end
end
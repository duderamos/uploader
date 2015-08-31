feature 'User' do
  scenario 'creating new one' do
    name = Faker::Name.name
    email = Faker::Internet.email

    visit new_user_path
    fill_in 'Name', with: name
    fill_in 'Email', with: email
    click_on 'Save'
    expect(page).to have_selector('li', text: name)
  end
end

feature 'User' do
  let(:user) { FactoryGirl.build(:user) }

  before(:all) do
    User.destroy_all
  end

  scenario 'creating new one' do
    visit new_user_path
    fill_in 'Name', with: user.name
    fill_in 'Email', with: user.email
    click_on 'Save'
    expect(page).to have_selector('li', text: user.name)
  end

  scenario 'deleting that user' do
    user.save!
    visit users_path
    click_on 'Remove'
    expect(page).to have_no_content user.email
  end
end

feature 'Testing Infradtructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content("Testing Infrastructure Working!")
  end
end

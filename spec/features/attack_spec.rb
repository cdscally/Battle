feature 'testing attack' do
  scenario 'player 1 can attack player 2' do
    sign_in_and_play
    click_button 'Stab'
    expect(page).to have_content("You have stabbed")
  end
end

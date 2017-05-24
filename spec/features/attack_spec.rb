feature 'testing attack' do

  scenario 'player 1 can attack player 2' do
    sign_in_and_play
    click_button 'Stab'
    expect(page).to have_content("You have stabbed")
  end

  scenario 'attacking player 2 reduces HP by 10' do
    sign_in_and_play
    click_button 'Stab'
    expect(page).not_to have_content("Player 2: 20 HP")
    expect(page).to have_content("Player 2: 10 HP")
  end

end

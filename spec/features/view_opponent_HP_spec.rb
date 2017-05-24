feature 'viewing the HP of the opponent' do
  scenario 'player 1 can see HP of player 2' do
    sign_in_and_play
    expect(page).to have_content("Player 2: 20 HP")
  end
end

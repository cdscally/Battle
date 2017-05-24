require 'player'



describe Player do

  subject(:player1) { Player.new('player1') }
  subject(:player2) { Player.new('player2') }

  it 'returns the player name' do
    expect(player1.name).to respond_to :length
  end

  it 'displays player HP' do
    expect(player1.hp).to eq(described_class::DEFAULT_HIT_POINTS)
  end

  it 'attacks the other player' do
    expect(player2).to receive(:receive_damage)
    player1.attack(player2)
  end

  it 'records HP damage' do
    expect { player1.receive_damage }.to change{ player1.hp }.by(-10)
  end

end

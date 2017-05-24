require 'player'

describe Player do
  it 'returns the player name' do
    player = Player.new("beast")
    expect(player.name).to respond_to :length
  end
end

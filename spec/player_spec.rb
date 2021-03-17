require 'player'

describe Player do
  subject(:max) {Player.new('Max')}

  describe '#name' do
    it 'returns name' do
      expect(subject.name).to eq 'Max'
    end
  end
end

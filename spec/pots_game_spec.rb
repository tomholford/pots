require 'rspec'
require_relative '../pots_game'

describe PotsGame do
  let(:instance) { described_class.new(pots: pots) }
  let(:pots) { [] }

  describe '#maximize_gold' do
    subject { instance.maximize_gold }

    context 'no pots given' do
      it 'raises error' do
        expect { subject }.to raise_error(ArgumentError)
      end
    end

    context 'one pot given' do
      let(:pots) { [9] }

      it 'returns the value' do
        expect(subject).to eq(9)
      end
    end

    context 'two pots given' do
      let(:pots) { [3, 7] }

      it 'returns the value' do
        expect(subject).to eq(7)
      end
    end

    context 'more than two pots given' do
      let(:pots) { [9, 3, 1, 5] }

      it 'returns the value' do
        expect(subject).to eq(12)
      end
    end

    context 'more than two pots given' do
      let(:pots) { [1, 3, 2, 2] }

      it 'returns the value' do
        expect(subject).to eq(5)
      end
    end

    context 'more than two pots given' do
      let(:pots) { [3, 9, 1, 2] }

      it 'returns the value' do
        expect(subject).to eq(11)
      end
    end

    context 'more than two pots given' do
      let(:pots) { [1, 1, 1, 1, 1, 9] }

      it 'returns the value' do
        expect(subject).to eq(11)
      end
    end
  end
end

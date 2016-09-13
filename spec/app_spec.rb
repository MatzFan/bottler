require_relative '../lib/bottler.rb'

describe Bottler do
  context '#new ' do
    it 'instantiates a object of Bottler class' do
      expect(Bottler.new.class).to eq Bottler
    end
  end

  context '#install' do
    it 'installs the given homebrew formula' do
      puts `brew list`.split
      expect(`brew list`.split).to be_empty
    end
  end
end

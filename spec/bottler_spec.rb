require_relative '../lib/bottler.rb'

describe Bottler do
  let(:bottler) { Bottler.new }
  let(:formula) { 'tor' }

  context '#list' do
    it 'lists installed homebrew formula' do
      expect(bottler.list).not_to be_empty
    end
  end

  context '#install' do
    it 'installs the given homebrew formula' do
      bottler.install formula
      expect(bottler.list).to include(formula)
    end
  end

  context '#bottle' do
    it 'returns the Bottle DSL for the formula' do
      puts bottler.bottle(formula)
      expect(bottler.bottle(formula)).to include 'sha256'
    end
  end
end

RSpec.describe Wrapsheet::Configuration do

  after :each do
    described_class.instance_variable_set(:@config, nil)
  end

  describe 'in ruby' do
    it 'is configurable' do
      described_class.configure do |config|
        expect(config).to be_a described_class
      end
    end

    it 'stores a singleton of the configuration' do
      described_class.configure { }
      expect(described_class.config).to be_a described_class
    end

    it 'has google_account_type' do
      described_class.configure do |config|
        config.google_account_type = 'avalue'
      end

      expect(described_class.config.google_account_type).to eq('avalue')
    end
  end

  describe 'from ENV'

end

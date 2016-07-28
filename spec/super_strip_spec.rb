require 'spec_helper'

describe SuperStrip do
  it 'has a version number' do
    expect(SuperStrip::VERSION).not_to be nil
  end

  let(:spaces) { SuperStrip::WHITE_SPACES.join }
  let(:str) { "#{spaces}a#{spaces}b#{spaces}" }

  describe '.lstrip' do
    it 'removes spaces right side' do
      expect(SuperStrip.lstrip(str)).to eq("a#{spaces}b#{spaces}")
    end
  end

  describe '.rstrip' do
    it 'removes spaces right side' do
      expect(SuperStrip.rstrip(str)).to eq("#{spaces}a#{spaces}b")
    end
  end

  describe '.strip' do
    it 'removes spaces left side and right side' do
      expect(SuperStrip.strip(str)).to eq("a#{spaces}b")
    end
  end
end

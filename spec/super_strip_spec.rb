require 'spec_helper'

describe SuperStrip do
  it 'has a version number' do
    expect(SuperStrip::VERSION).not_to be nil
  end

  describe 'String' do
    let(:spaces) { SuperStrip::WHITE_SPACES.join }
    let(:str) { "#{spaces}a#{spaces}b#{spaces}" }

    describe '#super_lstrip' do
      it 'removes spaces right side' do
        expect(str.super_lstrip).to eq("a#{spaces}b#{spaces}")
      end
    end

    describe '#super_rstrip' do
      it 'removes spaces right side' do
        expect(str.super_rstrip).to eq("#{spaces}a#{spaces}b")
      end
    end

    describe '#super_strip' do
      it 'removes spaces left side and right side' do
        expect(str.super_strip).to eq("a#{spaces}b")
      end
    end
  end
end

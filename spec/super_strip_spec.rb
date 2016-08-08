require 'spec_helper'

describe SuperStrip do
  it 'has a version number' do
    expect(SuperStrip::VERSION).not_to be nil
  end

  describe 'String' do
    let(:spaces) { SuperStrip::WHITE_SPACES.join }
    let(:str) { "#{spaces}a#{spaces}b#{spaces}" }

    describe '#super_lstrip' do
      it 'removes spaces left side' do
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

    describe '#super_lstrip!' do
      it 'returns nil if not modified' do
        s = str.super_lstrip
        expect(s.super_lstrip!).to be_nil
      end

      it 'removes spaces left side and modifies instance' do
        s = str.dup
        expect(s.super_lstrip!).to eq("a#{spaces}b#{spaces}")
        expect(s).to eq("a#{spaces}b#{spaces}")
      end
    end

    describe '#super_rstrip!' do
      it 'returns nil if not modified' do
        s = str.super_rstrip
        expect(s.super_rstrip!).to be_nil
      end

      it 'removes spaces right side and modifies instance' do
        s = str.dup
        expect(s.super_rstrip!).to eq("#{spaces}a#{spaces}b")
        expect(s).to eq("#{spaces}a#{spaces}b")
      end
    end

    describe '#super_strip!' do
      it 'returns nil if not modified' do
        s = str.super_strip
        expect(s.super_strip!).to be_nil
      end

      it 'removes spaces left side and right side and modifies instance' do
        s = str.dup
        expect(s.super_strip!).to eq("a#{spaces}b")
        expect(s).to eq("a#{spaces}b")
      end
    end
  end
end

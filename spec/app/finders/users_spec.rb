require 'spec_helper'

describe WPScan::Finders::Users::Base do
  subject(:user) { described_class.new(target) }
  let(:target)       { WPScan::Target.new(url) }
  let(:url)          { 'http://ex.lo/' }

  describe '#finders' do
    it 'contains the expected finders' do
      expect(user.finders.map { |f| f.class.to_s.demodulize })
        .to eq %w(AuthorPosts WpJsonApi AuthorIdBruteForcing LoginErrorMessages)
    end
  end
end

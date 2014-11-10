require 'minitest_helper'

describe MiddlemanTorrent do
  subject { MiddlemanTorrent }
  it 'has a version number' do
    subject::VERSION.wont_be_nil
  end
end

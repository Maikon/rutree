require 'spec_helper'
require './lib/rutree/reader'

describe Rutree::Reader do
  it 'reads lines from a file' do
    expect(Rutree::Reader.read("class HelloWorld\nend", StringIO)).to eq ["class HelloWorld\n", "end"]
  end
end

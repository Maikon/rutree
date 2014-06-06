require 'spec_helper'
require './lib/rutree/reader'

describe Rutree::Reader do
  it 'reads lines from a file' do
    expect(Rutree::Reader.read("spec/fixtures/simple_class_with_module.rb").count).to eq 7
  end

  it 'reads all lines from a directory' do
   expect(Rutree::Reader.read('spec/fixtures/simple_dir/').count).to eq 6 
  end
end

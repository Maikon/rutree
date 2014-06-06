require 'spec_helper'
require './lib/rutree/runner'

describe Rutree::Runner do
  it 'pull definitions from single file' do
    s = StringIO.new
    args = ['spec/fixtures/simple_class_with_module.rb']

    Rutree::Runner.new(args, s).execute

    expect(s.string).to include "class HelloWorld"
    expect(s.string).to include "module HelloWorld"
    expect(s.string).to include "def hey_there!(with_args)"
  end

  it 'pulls all definitions from a directory' do
    s = StringIO.new
    args = ['spec/fixtures/simple_dir/']

    Rutree::Runner.new(args, s).execute

    expect(s.string).to include "class HelloWorld"
    expect(s.string).to include "def hello_dir_meister"
    expect(s.string).to include "module HelloWorld"
  end
end

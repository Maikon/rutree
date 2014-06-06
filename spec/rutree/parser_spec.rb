require 'spec_helper'
require './lib/rutree/parser'

describe Rutree::Parser do
  it 'returns a line that contains the word class' do
    expect(Rutree::Parser.parse(["class HelloWorld\n"])).to eq ["class HelloWorld\n"]
  end

  it 'returns only the line that contains class' do
    expect(Rutree::Parser.parse(["class HelloWorld\n", "end"])).to eq ["class HelloWorld\n"]
  end

  it 'returns the line only if class is the first word' do
    expect(Rutree::Parser.parse(["HelloWorld class\n", "end"])).to eq []
  end

  it 'return the line starting with class only if its a proper class definition' do
    expect(Rutree::Parser.parse(["classHelloWorld\n", "end"])).to eq []
  end

  it 'returns a line containing module definition' do
    expect(Rutree::Parser.parse(["module HelloWorld\n", "end"])).to eq ["module HelloWorld\n"]
  end

  it 'returns a line containign method definition' do
    expect(Rutree::Parser.parse(["def hello_world\n", "end"])).to eq ["def hello_world\n"]
  end
end

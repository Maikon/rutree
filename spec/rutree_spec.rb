require 'spec_helper'
require 'rutree'

describe Rutree do
  it 'finds a class definition' do
    out = StringIO.new
    Rutree::Runner.execute('spec/fixtures/simple_class.rb', out) 

    expect(out.string).to include "class HelloWorld"
  end
end

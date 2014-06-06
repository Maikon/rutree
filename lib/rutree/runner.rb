require './lib/rutree/reader'
require './lib/rutree/parser'

module Rutree
  class Runner
    def self.execute(*args)
      new(*args).execute
    end
    
    attr_reader :path, :output

    def initialize(argv, output=Kernel)
      @path = argv.first
      @output = output
    end

    def execute
      output.puts Rutree::Parser.parse(Rutree::Reader.read(path))
    end
  end
end

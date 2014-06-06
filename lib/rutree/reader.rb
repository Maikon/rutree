module Rutree
  class Reader
    
    def self.read(path, fileio=File)
      fileio.open(path).readlines 
    end
  end
end

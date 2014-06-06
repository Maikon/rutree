module Rutree
  class Reader
    
    def self.read(path)
      return File.open(path).readlines if !File.directory?(path)

      self.all_ruby_files(path).map do |file_path|
        File.open(file_path).readlines
      end
      .flatten
    end

    def self.all_ruby_files(path)
      Dir["#{path}**/*.rb"]
    end
  end
end

module Rutree
  class Parser
    def self.parse(lines)
      lines.grep(/^\s*class |^\s*module |^\s*def /)
    end
  end
end

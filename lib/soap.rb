require 'ox'

module Soap

  class FaultDoc < ::Ox::Sax

    def initialize
      @stack = []
    end

    def start_element(name)
      @stack.push(name) if name == :faultstring 
    end

    def end_element(name)
      if @stack.any?
        raise "An Error"
      end
    end
  end

end

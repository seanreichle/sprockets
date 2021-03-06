# Define some basic Sprockets error classes
module Sprockets
  class Error           < StandardError; end
  class ArgumentError           < Error; end
  class CircularDependencyError < Error; end
  class ContentTypeMismatch     < Error; end
  class FileNotFound            < Error; end

  module EngineError
    attr_accessor :sprockets_annotation

    def message
      [super, sprockets_annotation].compact.join("\n")
    end
  end
end

# frozen_string_literal: true

require_relative "string_enhancer/version"

module StringEnhancer
  class Error < StandardError; end
  def self.hello_world 
    'Hello, World!'
  end 

  def self.word_count(string)
    string.split.count
  end 
end

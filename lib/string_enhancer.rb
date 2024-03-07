# frozen_string_literal: true

require_relative "string_enhancer/version"

module StringEnhancer
  class Error < StandardError; end

  def self.word_count(string)
    string.split.count
  end 

  def self.palindrome?(string)
    processed = string.downcase.gsub(/\W/, "")
    processed == processed.reverse
  end 

  def self.titleize(string)
    string.split.map(&:capitalize).join(' ')
  end 
end

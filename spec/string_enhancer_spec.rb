# frozen_string_literal: true

RSpec.describe StringEnhancer do
  it "has a version number" do
    expect(StringEnhancer::VERSION).not_to be nil
  end

  # it "does something useful" do
  #   expect(false).to eq(true)
  # end

  describe 'methods' do 
    context '#word_count' do 
      it 'counts words in a string' do 
        expect(StringEnhancer.word_count('Hello, World!')).to eq(2)
      end 

      it 'counts correctly for an empty string' do 
        expect(StringEnhancer.word_count("")).to eq(0)
      end 
    end
    context '#palindrome' do 
      it 'returns true for palindrome string' do 
        expect(StringEnhancer.palindrome?('madam')).to be(true)
      end 

      it 'returns false for non palindrome string' do 
        expect(StringEnhancer.palindrome?('hello')).to be(false)
      end 
    end 
  end 
end

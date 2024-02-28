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
  end 
end

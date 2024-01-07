require 'spec_helper'
require_relative '../sub_strings'

RSpec.describe 'Sub strings' do
  describe 'counts word occurrences from array of strings and returns as a hash' do
    let(:array) do
      [
        'below',
        'down',
        'go',
        'going',
        'horn',
        'how',
        'howdy',
        'it',
        'i',
        'low',
        'own',
        'part',
        'partner',
        'sit'
      ]
    end

    it 'looks for occurrences in one word' do
      expected_output = { 'below' => 1, 'low' => 1 }
      expect(substrings('below', array)).to eq(expected_output)
    end

    it 'looks for occurrences in multiple words' do
      input = "Howdy partner, sit down! How's it going?"
      expected_output = {
        'down' => 1,
        'go' => 1,
        'going' => 1,
        'how' => 2,
        'howdy' => 1,
        'it' => 2,
        'i' => 3,
        'own' => 1,
        'part' => 1,
        'partner' => 1,
        'sit' => 1
      }
      expect(substrings(input, array)).to eq(expected_output)
    end
  end
end

require 'spec_helper'
require_relative '../bubble_sort'

RSpec.describe 'Bubble sort' do
  describe 'bubble sorts an array' do
    it 'sorts a small array' do
      input_array = [4, 3, 78, 2, 0, 2]
      expected_output = [0, 2, 2, 3, 4, 78]
      expect(bubble_sort(input_array)).to eq(expected_output)
    end

    it 'sorts a larger array' do
      input_array = [2, 75, 88, 3, 63, 5, 1, 18, 20, 7, 15, 99, 43, 66, 0, 33]
      expected_output = [0, 1, 2, 3, 5, 7, 15, 18, 20, 33, 43, 63, 66, 75, 88, 99]
      expect(bubble_sort(input_array)).to eq(expected_output)
    end
  end
end

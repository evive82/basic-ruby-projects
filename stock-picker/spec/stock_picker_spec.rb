require 'spec_helper'
require_relative '../stock_picker'

RSpec.describe 'Stock picer' do
  describe 'takes array of stock prices and returns best days to buy and sell.' do
    it 'when the lowest and highest days are in the middle' do
      stocks = [7, 5, 3, 6, 9, 15, 8, 17, 6, 1, 10]
      expect(stock_picker(stocks)).to eq([2, 7])
    end

    it 'when the highest day is the first day' do
      stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]
      expect(stock_picker(stocks)).to eq([1, 4])
    end

    it 'when the lowest day is the last day' do
      stocks = [7, 5, 6, 3, 9, 12, 8, 6, 15, 10, 1]
      expect(stock_picker(stocks)).to eq([3, 8])
    end
  end
end

def stock_picker(stocks)
  buy_sell = [0, 0]
  stocks.each_with_index do |price, index|
    remaining_days = stocks[index..]
    if remaining_days.max - price > stocks[days.max] - stocks[days.min]
      new_high_index = stocks.index(remaining_days.max)
      buy_sell = [index, new_high_index]
    end
  end
  buy_sell
end

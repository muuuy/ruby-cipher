def stock_picker(prices)
  best_days = []
  max_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    prices[(buy_day + 1)..].each_with_index do |sell_price, sell_index|
      actual_sell_day = buy_day + 1 + sell_index
      profit = sell_price - buy_price

      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, actual_sell_day]
      end
    end
  end

  best_days
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts stock_picker(prices).inspect

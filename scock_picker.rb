
def profit_picker (prices)
    current_profit = prices[0]
    buy_day = 0
    profit = 0
    days = [0, 0]
    prices.each_with_index do |price, index|
        if price < current_profit
            current_profit = price
            buy_day = index
            next
        end
        if price - current_profit > profit
          profit = price - current_profit
          days = [buy_day, index]
        end
    end
    days
end

print profit_picker([17,3,6,9,15,8,6,1,10])

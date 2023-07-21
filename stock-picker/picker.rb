stock_prices = [1000, 17, 17, 18, 15, 2, 2, 7, 98, 120, 555, 422, 21, 1]

def stock_picker(stock_prices)
    puts "Stock prices: #{stock_prices}"
    stock_min = stock_prices.min
    if stock_min == stock_prices.last
        stock_prices.pop
        stock_min = stock_prices.min
    end
    position_stock_min = stock_prices.index(stock_min)
    new_stock_list = stock_prices.drop(position_stock_min)
    max = 0
    stock_max = new_stock_list.each do |price|
        if price > max
            max = price
        elsif price < max
            next
        end
    end
    position_stock_sell = stock_prices.index(max)
    puts "Buy on day #{position_stock_min + 1} and sell on day #{position_stock_sell + 1} for a profit of $#{max - stock_min}"
end

stock_picker(stock_prices)
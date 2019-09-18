require 'pry'
class CashRegister

    attr_reader :discount
    attr_accessor :total

    def initialize(discount=20)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item (title, price, quantity=1)
        @title = title
        @price = price
        @quantity = quantity
        @total += price * quantity
        quantity.times { @cart << @title }
    end

    def apply_discount
        savings = @discount *= 0.01
        save = @total * savings
        @total -= save
        @total = @total.floor
        if @total != 0
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
        @quantity.times {
            @cart.pop
        }
        @total -= @price * @quantity
    end
end
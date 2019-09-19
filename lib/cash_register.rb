require 'pry'

class CashRegister
    attr_accessor :discount, :total , :price , :quantity , :popped_item

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)
        quantity.times do 
            @items << title
            @popped_item = price * quantity
        end
    end

    def apply_discount
        if @discount != 0 && @total = (@total * ((100 - @discount)* 0.01)).to_i
        "After the discount, the total comes to $#{total}."
        else 
            "There is no discount to apply."
        end
        #binding.pry
    end

        def items 
            @items 
        end
def void_last_transaction
    if @total == 0.0
      0.0
    end
    @total = @total - @popped_item
end

    




end


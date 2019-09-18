class CashRegister
 
    attr_accessor :total, :discount, :items, :quantity, :price
   
    def initialize(discount = 0)
      @total = 0 
      @discount = discount
      @items = []
    end 


    def add_item(item_name, price, quantity = 1)
        @price = price
        @quantity = quantity
        @total += price * quantity
        quantity.times do
         @items << item_name
        end
    end

    def items
        @items
    end
   
    def apply_discount
        if @discount != 0
            @total -= @total * @discount / 100
            "After the discount, the total comes to $#{@total}."
          else
           "There is no discount to apply."
          end
    end

    def void_last_transaction
        @items[-1]
        if @items.length == 0
            @total = 0
        else
            @total = @total - (@price * @quantity)
        end
    end

  end
require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize (discount = 0, total = 0)
    @total = total
    @discount = discount
    @items= []
  end

  def add_item (title, price, quantity = 1)
      @price = price
      @quantity = quantity
    @total += price * quantity
    quantity.times do
    @items << title
  end
  end

  def apply_discount
    if @discount != 0
      # binding.pry
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    return @items
  end

  def void_last_transaction
    @items.delete_at(-1)
    if @items.size == 0
      @total == 0.0
    else
      @total -= @price * @quantity
    end
  end

end


class CashRegister

  attr_reader :discount
  attr_accessor :total, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1) #set default quantity to 1 since if item is added to cart, it will be at least 1 item
    self.total += price * quantity
    items_amount = [title] * quantity
    @items.concat(items_amount)
    @last_transaction = price * quantity
  end
 
  def apply_discount
    if self.discount
      @total = (self.total - (self.total * (discount * 0.01))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
    if @total == 0.0
      0.0
    end
  end

end
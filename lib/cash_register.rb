class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      discount_in_dollars = @total * discount / 100
      @total = @total - discount_in_dollars
      @total
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items



end

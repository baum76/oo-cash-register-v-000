class CashRegister
  attr_accessor :total, :discount, :name, :price, :quanitity, :item
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity=1)
    item_info = {}
    item_info[:name] = title
    item_info[:price] = price
    item_info[:quantity] = quantity
    @cart << item_info
    @total += price * quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    item_names = []
    @cart.each do |item_info|
      quantity = item_info[:quantity]
      quantity.times do
      item_names << item_info[:name]
    end
      end
    item_names
  end

  def void_last_transaction
    @total -= item_info
  end

end

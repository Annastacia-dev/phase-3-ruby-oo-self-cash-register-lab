class CashRegister
    attr_accessor :total, :discount, :items, :amount
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = 0
    end
    def add_item(item,price,quantity = 1)
        @total += price * quantity
        quantity.times do
            @items << item
        end
        @last_transaction = price * quantity
    end
    def apply_discount
        @discount > 0 ? "After the discount, the total comes to $#{@total -= @total * @discount / 100}." : "There is no discount to apply."
    end
    def void_last_transaction
        @total -= @last_transaction
    end       
end

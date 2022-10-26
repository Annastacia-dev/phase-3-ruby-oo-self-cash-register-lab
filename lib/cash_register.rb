class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction
   
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
        @last_transaction = 0
    end
    
    def add_item(title, amount, quantity=1)
        self.last_transaction = amount * quantity
        self.total += self.last_transaction
        quantity.times do
            self.items << title
          end
    end

    def apply_discount
        if self.discount == 0
           return "There is no discount to apply."
        else 
            self.total -= self.total * self.discount / 100
            return "After the discount, the total comes to $#{self.total}."
            
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction

    end
end

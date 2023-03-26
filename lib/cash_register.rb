class CashRegister
    attr_accessor :discount, :total, :items, :trans
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.trans = price * quantity
        self.total += self.trans
        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        if self.discount != 0
        self.total = (self.total - self.total * discount/100)
         "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.trans
    end
end

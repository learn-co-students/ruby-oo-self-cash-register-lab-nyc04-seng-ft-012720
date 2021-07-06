require "pry"
class CashRegister
    
    attr_accessor :discount, :total, :items,:last_transaction_amount,:amount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
       
    end 

    def add_item(title,price,quantity = 1)
        @price = price
        @total += price * quantity
            if quantity > 1
            i = 0
            while i < quantity
            @items << title
            i += 1
            end 
    else
        @items << title
            end
            @last_transaction_amount = price
            @amount = quantity
            
    end 

    def apply_discount 
        if discount != 0
            self.total = (total * ((100.0 - @discount.to_f) / 100)).to_i
            "After the discount, the total comes to $#{self.total}."
        else    
            "There is no discount to apply."
        end 
    end 

    def void_last_transaction
        self.total -=  @last_transaction_amount * @amount
        
end 

end 
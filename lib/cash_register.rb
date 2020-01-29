
class CashRegister
    attr_accessor :discount, :total, :items, :lastitem, :lastprice, :lastquantity
    def initialize(*discount)
       @total = 0 
       @discount = discount[0]
       @items = []
    end

    def add_item(itemname, itemprice, quantity=1)
        @total += (itemprice * quantity)
        quantity.times {@items << itemname}
        @lastitem = itemname
        @lastprice = itemprice
        @lastquantity = quantity
    end
    def apply_discount
        if @discount != nil
            @total = total * (100 - @discount) / 100
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @items.delete(@lastitem)
        @total -= @lastprice * @lastquantity
    end
end

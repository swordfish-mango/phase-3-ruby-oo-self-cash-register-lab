class CashRegister
    attr_accessor :total
    attr_accessor :discount
    attr_accessor :prev_total
    attr_accessor :items

    def initialize(employee_discount=0)
        @total = 0
        @discount = employee_discount
        @items = []
    end

    def add_item(title,price,quantity=1)
        @prev_total = total
        cost = price*quantity
        @total = @total + price*quantity
        @items = @items.push(title)
    end

    def apply_discount
        if discount == 0
            return "There is no discount to apply."
        else
            @total = @total * (100-discount) / 100
            return "After the discount, the total comes to $#{total}."
        end
    end

    def void_last_transaction
        @total = @prev_total
    end
end




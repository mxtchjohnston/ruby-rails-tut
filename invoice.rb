class Invoice
    
    def initialize(subtotal)
	@subtotal = subtotal
	@items    = []
    end

    def with_tax
	tax_amount = @subtotal * 0.20
	@subtotal + tax_amount
    end

    def add_item(item)
	# The << is equivalent to Array.concat in JS
	@items << item
	@subtotal += item.price
    end
end 

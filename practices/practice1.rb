module Bill
    def billing
        puts "Getting bill details"
    end
end
class Product
    attr_accessor :name, :price
    def initialize(name, price)
        @name=name 
        @price=price
    end
end
class Order
    include Bill
    attr_accessor :product, :quantity
    def initialize (product, quantity)
        @product=product
        @quantity=quantity
    end
    def total_price
        @product.price * @quantity
    end
end
class Payment 
    include Bill
    attr_accessor :order, :payment_method
    def initialize (order, payment_method)
        @order=order
        @payment_method=payment_method
    end
  def pay
    puts "Processing payment of #{order.total_price} using #{payment_method}"
  end
end
p=Product.new("Laptop", 1000)
o=Order.new(p, 2)
payment=Payment.new(o, "Credit Card")
puts o.total_price
puts payment.pay
puts payment.billing
class Product
    module My_product
     def  product_id
      puts "product_id is 1234" 
     end 
    end
end
class Order
    module My_order
     def  order_id
      puts "order_id is 5678" 
     end 
    end
end
class Payment
    include Product::My_product
    include Order::My_order
    
end
t = Payment.new
t.product_id
t.order_id
puts "Order is confirmed"
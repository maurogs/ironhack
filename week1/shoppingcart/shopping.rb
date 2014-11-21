


class ShoppingCart
	#attr_accessor :products
	
	def initialize
		@products = []
		@my_items = {
		"apple" => 10,
		"orange" => 5,
		"grape" => 15,
		"banana" => 20,
		"watermelon" => 50
		}
	end
	
	def add (item)
		@products << item
	end
	
	def getprice(item)
		@my_items[item]
		puts @my_items[item]
	end
	
	def cost
		price=0
		@products.each do |element|
		price= price + getprice(element)
		end
		return price
	end
	
	def discount
			
	end
	
	
end





cart = ShoppingCart.new
cart.add("apple")
cart.add("banana")
puts cart.cost()

class ShoppingCart

	def initialize(season, day_of_week)
		@cost = 0
		@cart = {}
		@season = season.to_sym
		@day_of_week = day_of_week.to_sym
		@items = {
			:apple      => {
				:cal_date	=> "season",
				:spring 	=> 10,
				:summer 	=> 10,
				:autumn 	=> 15,
				:winter 	=> 12
			},
			:orange      => {
				:cal_date	=> "season",
				:spring 	=> 5,
				:summer 	=> 2,
				:autumn 	=> 5,
				:winter 	=> 5
			},
			:grape      => {
				:cal_date	=> "season",
				:spring 	=> 15,
				:summer 	=> 15,
				:autumn 	=> 15,
				:winter 	=> 15
			},
			:banana      => {
				:cal_date	=> "season",
				:spring 	=> 20,
				:summer 	=> 20,
				:autumn 	=> 20,
				:winter 	=> 21
			},
			:watermelon => {
				:cal_date	=> "day_of_week",
				:Sunday 	=> 100,
				:Monday 	=> 50,
				:Tuesday 	=> 50,
				:Wednesday 	=> 50,
				:Thursday 	=> 50,
				:Friday 	=> 50,
				:Saturday 	=> 50,
			}
		}

		@discount = {
			:apple		=> {
				:count 		=> 2,
				:discount 	=> "apple",
				:many		=> 1
			},
			:orange		=> {
				:count 		=> 3,
				:discount 	=> "orange",
				:many		=> 1
			},
			:grape		=> {
				:count 		=> 4,
				:discount 	=> "banana",
				:many		=> 1
			}
		}
	end

	def add_item_to_cart(item)
      	if @cart.key?(item)
        	@cart[item] += 1
      	else
        	@cart[item] = 1
      	end
  	end

  	def show
  		@cost = 0
  	 	@cart.each do |fruit, count|

  	 		case @items[fruit][:cal_date]
  	 		when "season"
   	 			item_total = @items[fruit][@season] * count

  	 		when "day_of_week"
  	 			item_total = @items[fruit][@day_of_week] * count
  	 		end
				@cost += item_total
  	 		puts "#{count} #{fruit}: #{item_total}$"
  	 	end
  	 	puts "total: #{@cost}$"
  	end

  	def calculate_discount
  		@cart.each do |fruit, count|
  	 		if @discount[fruit]
  	 			if count == @discount[fruit][:count]
  	 				@cart[fruit] -= @discount[fruit][:many]
  	 			end
  	 		end
  	 	end
  	end
end

cart = ShoppingCart.new("winter","Sunday")

cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana
cart.add_item_to_cart :apple
cart.add_item_to_cart :orange
cart.add_item_to_cart :orange
cart.add_item_to_cart :watermelon

cart.show
cart.calculate_discount 
cart.show

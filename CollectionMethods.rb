class Home
  attr_accessor :name, :city, :capacity, :price
  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

class Inventory
  attr_accessor :homes
  def initialize
    @homes=[]
  end

  def add_home(home)
    @homes << home

def array_printer(homes_array)
  homes_array.each do |hm|
  puts ""
  puts "#{hm.name}'s place in #{hm.city}"
  puts "Price: $#{hm.price} a night"
  puts "Capacity: #{hm.capacity}."
end
end
puts""

def sort_price #sort price
price_sort = @homes.sort_by {|cost| cost.price}
puts "PRICE SORTED FROM LOW TO HIGH: #{price_sort}"



puts "Would you rather sort the prices highest to lowest instead?"
choice_price = gets.chomp.downcase
  if choice_price == "yes"
    price_sort_reverse = @homes.sort_by {|cost| cost.price}.reverse
    puts "#{price_sort_reverse}"
  elsif choice_price == "no"
    puts "ok!"
end
end



def sort_capacity  #sort capacity
  puts "Sort the capacity from highest to lowest or lowest to highest. Type 'highest or lowest' or 'lowest to highest':"
  capacity_price_cap = gets.chomp.downcase
  if capacity_price_cap == "lowest to highest"
      capacity_p = @homes.sort_by {|cap| cap.capacity}
      puts "#{capacity_p}"
  elsif capacity_price_cap == "highest to lowest"
      capacity_p = @homes.sort_by {|cap| cap.capacity}.reverse
      puts "#{capacity_p}"
  end
end


def search_city  #search by city
  puts "******"
  puts "What city would you like to stay in? Choose by typing: San Juan, Seville, Pittsburgh, Malaga, Paris, Mexico City, New York, San Francisco"
  homes_by_city = gets.chomp.capitalize
    if homes_by_city == "Seville"
    homes_by_city = @homes.select {|h| h.city == homes_by_city}
      puts "#{homes_by_city}"
    elsif homes_by_city == "San juan"
      homes_by_city = @homes.select {|h| h.city == homes_by_city}
          puts "#{homes_by_city}"
    elsif homes_by_city == "Pittsburgh"
      homes_by_city = @homes.select {|h| h.city == homes_by_city}
          puts "#{homes_by_city}"
    elsif homes_by_city == "Mexico city"
      homes_by_city = @homes.select {|h| h.city == homes_by_city}
          puts "#{homes_by_city}"
    elsif homes_by_city == "Paris"
          homes_by_city = @homes.select {|h| h.city == homes_by_city}
              puts "#{homes_by_city}"
    elsif homes_by_city == "New york"
          homes_by_city = @homes.select {|h| h.city == homes_by_city}
              puts "#{homes_by_city}"
    elsif homes_by_city == "Malaga"
          homes_by_city = @homes.select {|h| h.city == homes_by_city}
              puts "#{homes_by_city}"
    elsif homes_by_city == "London"
          homes_by_city = @homes.select {|h| h.city == homes_by_city}
              puts "#{homes_by_city}"
          end
end



def average_p  #price array and average
    puts "******"
    prices = @homes.map { |cost| cost.price }
    average_price = prices.reduce(0.0) {|sum, num| sum + num}.to_f / prices.size
    puts "The average price of homes you are looking at is: #{average_price}"
    puts ""
end

def home_price #find home at a user's preferred price
    puts "Enter the price you want to spend on a home"
    client_price = gets.chomp.to_i
    if client_price == 41
        client_price = @homes.find_all {|hm| hm.price === client_price}
      puts "#{client_price}"
    elsif client_price==41
      client_price = @homes.find {|hm| hm.price === client_price}
      puts "#{client_price}"
    elsif client_price==42
      client_price = @homes.find {|hm| hm.price == client_price}
      puts "#{client_price}"
        elsif client_price==45
          client_price = @homes.find {|hm| hm.price == client_price}
          puts "#{client_price}"
        elsif client_price==47
          client_price = @homes.find {|hm| hm.price == client_price}
          puts "#{client_price}"
        elsif client_price==49
          client_price = @homes.find {|hm| hm.price == client_price}
          puts "#{client_price}"
        elsif client_price == ''
          puts "We do not have anything in that price range."
          puts "The first home that costs $41 is: #{user_price}"
      end
end
end
end

hm = Inventory.new
hm.add_home(Home.new("Nizar's place","San Juan", 2, 42))
hm.add_home(Home.new("Fernando's place","Seville", 5, 47))
hm.add_home(Home.new("Josh's place","Pittsburgh", 3, 41))
hm.add_home(Home.new("Gonzalo's place","Malaga", 2, 45))
hm.add_home(Home.new("Ariel's place","San Juan", 4, 49))
hm.add_home(Home.new("Jane's place","Paris", 3, 48))
hm.add_home(Home.new("Mark's place","Mexico City", 3, 39))
hm.add_home(Home.new("Amy's place","London", 5, 49))
hm.add_home(Home.new("Alex's place","New York", 4, 55))
hm.add_home(Home.new("Erica's place","San Francisco", 3, 55))


hm.array_printer(hm.homes)
hm.sort_price
hm.sort_capacity
hm.search_city
hm.average_p
hm.home_price

require 'rubygems'
require 'imdb'
require 'to_lang'

ToLang.start('YOUR_GOOGLE_TRANSLATE_API_KEY')

file = IO.read("movies.txt")
titles = file.split("\n")

movies =[]
titles.each do |title|
    i = Imdb::Search.new(title)
    movies.push(i.movies[0])
end



class Movie
                attr_accessor :name, :rating
                def initialize(name, rating)
                               @name = name
                               @rating = rating
                end
end

bar_height = 10

bar_height.downto(1) do |i|
                print '|'
                movies.each do |m|
                               if (m.rating / 10.0 * bar_height >= i)
                                               print "#"
                               else
                                               print " "
                               end
                               print '|'
                end
                print "\n"
end

print '-'
for i in 0..movies.size - 1
   print '--'
end

puts

print '|'
for i in 0..movies.size - 1
   print i += 1
   print '|'
end

puts "\n\n"
movies.each_with_index do |m, index|
       puts "#{index+1}, #{m.title}".translate('es', :from => 'en')
end

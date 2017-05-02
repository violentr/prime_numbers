class PrimeNumber

 def self.take(number)
   max = [*2..number]
   max.each_with_object([]) do |item, array|
     for i in (2..item) do
       break if item % i == 0
     end
     array << i if i == item
     max << item += 1 if item >= number
     return array if array.size == number
   end
 end

end

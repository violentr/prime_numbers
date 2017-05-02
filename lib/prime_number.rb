class PrimeNumber

  def self.take(number)
    range = [*2..number]
    range.each_with_object([]) do |item, array|
      if array.size != number
        store_prime_number(item, array)
        range << item += 1 if item >= number
      end
    end
  end

  def self.store_prime_number(number, collection)
    for i in (2..number) do
      break if number % i == 0
    end
    collection <<  i if i == number
  end

end

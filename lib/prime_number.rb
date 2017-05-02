#!/usr/bin/env ruby

class PrimeNumber

  def self.take(number)
    range = [*2..number]
    range.each_with_object([]) do |i, array|
      if array.size != number
        store_prime_number(i, array)
        increase_numbers_range(range, i)
      end
    end
  end

  def self.output(data)
    puts "This is your prime numbers: #{data}"
  end

  def self.store_prime_number(number, collection)
    for i in (2..number) do
      break if number % i == 0
    end
    collection <<  i if i == number
  end

  def self.increase_numbers_range(range, number)
    range << number += 1 if number >= range.last
  end

end


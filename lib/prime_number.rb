#!/usr/bin/env ruby

class PrimeNumber

  attr_accessor :range, :primes_list
  attr_reader :number

  def initialize(number=ARGV.first)
    @number = number || 10
    @range = [*2..@number.to_i]
    @primes_list = []
  end

  def get_results
    range.each do |i|
      if primes_list.size != number.to_i
        store_prime_number(i)
        increase_numbers_range(i)
      end
    end
  end

  def output
    puts "*****************************************************"
    puts"\n"
    puts "This is your prime numbers: #{primes_list.join(', ')}"
    puts "In total you have #{primes_list.size} prime numbers"
    puts "\n"
    puts "*****************************************************"
  end

  def store_prime_number(integer)
    for i in (2..integer) do
      break if integer % i == 0
    end
    primes_list <<  i if i == integer
  end

  def increase_numbers_range(integer)
    range << integer += 1 if integer >= range.last
  end

end

prime = PrimeNumber.new
prime.get_results
prime.output




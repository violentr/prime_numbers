#!/usr/bin/env ruby

require_relative 'output_data'

class PrimeNumber

  attr_accessor :range, :primes_list
  attr_reader :number

  def initialize(number)
    @number = number
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
    ::OutputData.new(primes_list).draw_table
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




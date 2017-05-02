RSpec.describe PrimeNumber do
let(:prime_number_instance) { PrimeNumber.new }

 describe '#get_results' do
  before do
    prime_number_instance.get_results
  end
   it "should list 10 numbers" do
     output = prime_number_instance.primes_list.size
     expect(output).to eq 10
   end

   it "should list prime numbers" do
     output = prime_number_instance.primes_list
     expected = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
     expect(output).to eq(expected)
   end
 end

 describe '#store_prime_number' do

   it "should store prime number in a collection" do
     output = prime_number_instance.store_prime_number(7)
     expect(output).to eq [7]
   end

   it "should not store number in a collection" do
     output = prime_number_instance.store_prime_number(10)
     expect(output).to eq nil
   end
 end

 describe '#increase_numbers_range' do

   it "should increase range by one" do
     output = prime_number_instance.increase_numbers_range(10)
     expect(output).to include(11)
   end
   it "should not increase range" do
     output = prime_number_instance.increase_numbers_range(9)
     expect(output).to be nil
   end

 end
end

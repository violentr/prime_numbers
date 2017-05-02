RSpec.describe PrimeNumber do

 describe '.take' do

   it "should list 10 numbers" do
     output = PrimeNumber.take(10)
     expect(output.size).to eq 10
   end

   it "should list prime numbers" do
     output = PrimeNumber.take(10)
     expected = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
     expect(output).to eq(expected)
   end
 end
 describe '.store_prime_number' do

   it "should store prime number in a collection" do
     output = PrimeNumber.store_prime_number(7, [])
     expect(output).to eq [7]
   end

   it "should not store number in a collection" do
     output = PrimeNumber.store_prime_number(10, [])
     expect(output).to eq nil
   end
 end
 describe '.increase_numbers_range' do

   it "should increase range by one" do
     range = [*1..10]
     output = PrimeNumber.increase_numbers_range(range, 10)
     expect(output).to include(11)
   end
   it "should not increase range" do
     range = [*1..10]
     output = PrimeNumber.increase_numbers_range(range, 9)
     expect(output).to be nil
   end

 end
end

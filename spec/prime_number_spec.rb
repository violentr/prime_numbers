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
end

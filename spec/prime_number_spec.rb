RSpec.describe PrimeNumber do

 describe '.take' do

   it "should list 10 numbers" do
     output = PrimeNumber.take(10)
     expect(output.size).to eq 10
   end

 end
end

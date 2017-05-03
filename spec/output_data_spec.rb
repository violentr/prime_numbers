RSpec.describe OutputData do

  let(:final_output) { [[2, 4, 6, 10, 14, 22, 26, 34, 38, 46, 58],
                [3, 6, 9, 15, 21, 33, 39, 51, 57, 69, 87],
                [5, 10, 15, 25, 35, 55, 65, 85, 95, 115, 145],
                [7, 14, 21, 35, 49, 77, 91, 119, 133, 161, 203],
                [11, 22, 33, 55, 77, 121, 143, 187, 209, 253, 319],
                [13, 26, 39, 65, 91, 143, 169, 221, 247, 299, 377],
                [17, 34, 51, 85, 119, 187, 221, 289, 323, 391, 493],
                [19, 38, 57, 95, 133, 209, 247, 323, 361, 437, 551],
                [23, 46, 69, 115, 161, 253, 299, 391, 437, 529, 667],
                [29, 58, 87, 145, 203, 319, 377, 493, 551, 667, 841]]}

  let(:prime_number_list) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
  let(:output_data_instance) { OutputData.new(prime_number_list) }


  describe '#prepare_table_raws' do
    before do
      output_data_instance.prepare_table_rows
    end

    it "should have collection of primes" do
      data = output_data_instance.data
      expect(data).to eq prime_number_list
    end

    it "should have set of numbers equal to 11" do
      output = output_data_instance.collection
      expect(output.first.size).to eq 11
      expect(output.first).to eq [2, 4, 6, 10, 14, 22, 26, 34, 38, 46, 58]
    end

  end

  describe '#draw_table' do
    it "should return {} if collection empty" do
      data = OutputData.new([])
      data.prepare_table_rows
      expect(data.collection).to be {}
    end

    it "should have headings with 1st element empty" do
      output_data_instance.draw_table
      expect(output_data_instance.data.first).to be_empty
    end

    it "should be in a format to draw a table" do
      output_data_instance.draw_table
      expect(output_data_instance.collection).to eq final_output
    end

  end
end

require 'terminal-table'

class OutputData
  attr_reader :data
  attr_accessor :collection

  def initialize(data)
    @data = data
    @collection = []
  end

  def draw_table
    prepare_table_rows
    return {} if collection.empty?
    table = Terminal::Table.
      new headings: data.unshift(""), :rows => collection
    puts table
  end

  def prepare_table_rows
    data.each do |i|
      build_row = data.map {|n| n*i}.unshift(i)
      collection << build_row
    end
  end

end


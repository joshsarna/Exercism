class Matrix
  attr_reader :rows
  def initialize(matrix_string)
    @rows = matrix_string.split("\n")
    @rows.map! do |row|
      row.split(" ").map! do |element|
        element.to_i
      end
    end
  end

  def columns
    output_columns = []
    @rows[0].length.times do
      output_columns << []
    end
    @rows[0].length.times do |i|
      @rows.each do |row|
        output_columns[i] << row[i]
      end
    end
    output_columns
  end
end

# matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9\n 8 7 6")
# assert_equal [1, 4, 7, 8], matrix.columns[0]
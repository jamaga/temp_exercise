class Columns

  def initialize(file)
    @source =  File.read(file).split('|').map { |row| row.split(';').map(&:to_i) }
  end

  def calculate(column = nil)
    if column.nil?
      @results = @source.map { |t| t.reduce(:*) }
    else
      @results = @source[column].reduce(:*)
    end
    @results
  end
end
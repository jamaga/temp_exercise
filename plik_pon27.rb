class FileMonday27
  attr_accessor :arg1, :arg2

  def initialize(arg1, arg2)

    @array_of_arrays =  File.read('pon27.txt').split('|').map { |elem| elem.split(';') }
    @array_of_arrays.each do |pair|
      pair
      single_pair = pair
      p single_pair
      @arg1 = pair[0].gsub(/[^0-9]/, '')
      @arg2 = pair[1].gsub(/[^0-9]/, '')
      p @arg1
      p @arg2
    end
  end

  def multiply_column
    @
  end


end
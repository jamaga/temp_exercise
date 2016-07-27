class Main

  def self.build_string(data)
    result = ''
    data.each_with_index do |array, index|
      array.map! &:capitalize if index.zero? || index == data.length - 1

      result += array.join(', ')
      if index != data.length - 1
        result << '; '
      end
    end
    result.strip
  end
end
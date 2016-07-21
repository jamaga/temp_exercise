class Main

  def self.transform(data)
    result = []
    data.each_with_index do |array, index|
      array = array.take data.first.length
      array.map! &:capitalize if index.zero?
      array.each_with_index do |text, index_2|
        result[index_2] = [] if result[index_2].nil?
        result[index_2] << text.to_s
      end
    end
    result.map! do |a|
      a.reject { |word| word.empty?}.join(' ')
    end
    result.join('. ') << '.'
  end
end
